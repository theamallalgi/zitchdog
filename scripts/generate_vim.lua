-- INFO: usage: nvim --clean -l scripts/generate_vim.lua <outDir>

vim.opt.rtp:prepend(vim.fn.getcwd())

local outDir = arg[1] or "build/vim"
local variants = { "grape", "pine" }
-- groups/core modules that make sense in Vim (treesitter and plugins are skipped on purpose)
local scope = { "palette", "editor", "syntax", "languages", "diagnostics" }
local attrs = { "bold", "italic", "underline", "undercurl", "strikethrough", "reverse", "standout" }
local cube = { 0, 95, 135, 175, 215, 255 }

---@param rgb integer
---@return integer
local function toCterm(rgb)
	local r, g, b = bit.rshift(rgb, 16), bit.band(bit.rshift(rgb, 8), 0xff), bit.band(rgb, 0xff)

	---@param v integer
	---@return integer
	local function nearest(v)
		local best, bestDist = 1, math.huge
		for i, level in ipairs(cube) do
			local dist = math.abs(v - level)
			if dist < bestDist then
				best, bestDist = i, dist
			end
		end
		return best
	end

	local ri, gi, bi = nearest(r), nearest(g), nearest(b)
	local cubeDist = (r - cube[ri]) ^ 2 + (g - cube[gi]) ^ 2 + (b - cube[bi]) ^ 2

	-- dark themes live near black, so the 24-step gray ramp often beats the 6x6x6 cube
	local step = math.min(23, math.max(0, math.floor(((r + g + b) / 3 - 8) / 10 + 0.5)))
	local gray = 8 + 10 * step
	local grayDist = (r - gray) ^ 2 + (g - gray) ^ 2 + (b - gray) ^ 2

	if grayDist < cubeDist then
		return 232 + step
	end
	return 16 + 36 * (ri - 1) + 6 * (gi - 1) + (bi - 1)
end

---@param name string
---@param hl vim.api.keyset.get_hl_info
---@return string
local function emit(name, hl)
	if hl.link then
		return ("highlight! link %s %s"):format(name, hl.link)
	end

	local gui, cterm, seen = {}, {}, {}
	for _, a in ipairs(attrs) do
		if hl[a] then
			gui[#gui + 1] = a
			local c = a == "undercurl" and "underline" or a -- cterm has no undercurl
			if not seen[c] then
				seen[c] = true
				cterm[#cterm + 1] = c
			end
		end
	end

	local parts = { "highlight", name }
	for _, k in ipairs({ "fg", "bg", "sp" }) do
		local v = hl[k]
		if type(v) == "number" then
			parts[#parts + 1] = ("gui%s=#%06x"):format(k, v)
			if k ~= "sp" then
				parts[#parts + 1] = ("cterm%s=%d"):format(k, toCterm(v))
			end
		end
	end
	parts[#parts + 1] = "gui=" .. (#gui > 0 and table.concat(gui, ",") or "NONE")
	parts[#parts + 1] = "cterm=" .. (#cterm > 0 and table.concat(cterm, ",") or "NONE")
	return table.concat(parts, " ")
end

---@param palette ZitchdogPalette
---@param config ZitchdogConfig
---@return string[]
local function collectNames(palette, config)
	local zp = require("zitchdog.common.core").createZitchPattern(palette)
	local set = {}
	for _, mod in ipairs(scope) do
		for name in pairs(require("zitchdog.groups.core." .. mod).create(palette, zp, config)) do
			if name:find("^[%w_.-]+$") then -- Vim rejects '@' and friends in group names
				set[name] = true
			end
		end
	end
	local names = vim.tbl_keys(set)
	table.sort(names) -- stable order = clean git diffs
	return names
end

---@param v any
---@return string
local function vimLiteral(v)
	if type(v) == "string" then
		return "'" .. (v:gsub("'", "''")) .. "'"
	elseif type(v) == "number" then
		return tostring(v)
	end
	local out = {}
	if #v > 0 then
		for _, x in ipairs(v) do
			out[#out + 1] = vimLiteral(x)
		end
		return "[" .. table.concat(out, ", ") .. "]"
	end
	local keys = vim.tbl_keys(v)
	table.sort(keys)
	for _, k in ipairs(keys) do
		out[#out + 1] = ("'%s': %s"):format(k, vimLiteral(v[k]))
	end
	return "{" .. table.concat(out, ", ") .. "}"
end

---@param path string
---@param lines string[]
local function write(path, lines)
	vim.fn.mkdir(vim.fs.dirname(path), "p")
	vim.fn.writefile(lines, path)
end

local banner = [[" GENERATED from github.com/theamallalgi/zitchdog. Do not edit, changes are overwritten.]]

local footer = [[
if get(g:, 'zitchdog_transparent_background', 0)
  for s:g in ['Normal', 'EndOfBuffer', 'SignColumn', 'FoldColumn', 'LineNr', 'CursorLineNr']
    execute 'highlight' s:g 'guibg=NONE ctermbg=NONE'
  endfor
endif
if get(g:, 'zitchdog_italic_comments', 0)
  highlight Comment gui=italic cterm=italic
endif]]

for _, variant in ipairs(variants) do
	require("zitchdog").load({ variant = variant })
	-- state.lua, not config.options: init.lua rebinds its local `config`, so options stays stale
	local palette, config = require("zitchdog.state").get()

	local lines = {
		banner,
		"set background=dark",
		"highlight clear",
		"if exists('syntax_on') | syntax reset | endif",
		("let g:colors_name = 'zitchdog-%s'"):format(variant),
	}

	local term = {}
	for i = 0, 15 do
		term[#term + 1] = ("'%s'"):format(vim.g["terminal_color_" .. i])
	end
	lines[#lines + 1] = "let g:terminal_ansi_colors = [" .. table.concat(term, ", ") .. "]"

	for _, name in ipairs(collectNames(palette, config)) do
		lines[#lines + 1] = emit(name, vim.api.nvim_get_hl(0, { name = name, create = false }))
	end
	vim.list_extend(lines, vim.split(footer, "\n"))

	write(("%s/colors/zitchdog-%s.vim"):format(outDir, variant), lines)

	-- lightline reuses the exact same palette module the Neovim side already has
	local ll = require("zitchdog.lightline").get(variant)
	write(("%s/autoload/lightline/colorscheme/zitchdog_%s.vim"):format(outDir, variant), {
		banner,
		("let g:lightline#colorscheme#zitchdog_%s#palette = %s"):format(variant, vimLiteral(ll)),
	})
end

write(outDir .. "/colors/zitchdog.vim", {
	banner,
	"execute 'runtime colors/zitchdog-' . get(g:, 'zitchdog_style', 'grape') . '.vim'",
})
