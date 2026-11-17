local M = {}

---@param hex string
---@return integer|string
local function toCterm(hex)
	local r, g, b = hex:match("^#(%x%x)(%x%x)(%x%x)$")
	if not r then
		return "NONE"
	end

	local function cube(v)
		v = tonumber(v, 16)
		return v < 48 and 0 or v < 115 and 1 or math.floor((v - 35) / 40)
	end

	return 16 + 36 * cube(r) + 6 * cube(g) + cube(b)
end

---@param fg string
---@param bg string
---@return table
local function pair(fg, bg)
	return { fg, bg, toCterm(fg), toCterm(bg) }
end

---@param p ZitchdogPalette
---@return table
function M.build(p)
	local second = pair(p.cyan, p.teal)
	local muted = pair(p.slate, p.darkblack)
	local dim = pair(p.graphite, p.darkblack)

	local function mode(first)
		return {
			left = { first, second },
			middle = { muted },
			right = { muted, muted, muted },
		}
	end

	local normal = mode(pair(p.purple, p.lightblack))
	normal.error = { pair(p.red, p.maroon) }
	normal.warning = { pair(p.yellow, p.umber) }

	return {
		normal = normal,
		insert = mode(pair(p.green, p.pine)),
		replace = mode(pair(p.red, p.maroon)),
		visual = mode(pair(p.yellow, p.umber)),
		inactive = { left = { dim, dim }, middle = { dim }, right = { dim, dim, dim } },
		tabline = {
			left = { second },
			middle = { muted },
			right = { second },
			tabsel = { pair(p.purple, p.lightblack) },
		},
	}
end

---@param variant ZitchdogVariant?
---@return table
function M.get(variant)
	return M.build(require("zitchdog.colors").resolve(variant))
end

---re-reads the palette after a variant switch, only for colorscheme = "zitchdog"
function M.refresh()
	local ll = vim.g.lightline
	if vim.fn.exists("*lightline#init") == 0 or type(ll) ~= "table" or ll.colorscheme ~= "zitchdog" then
		return
	end

	vim.g["lightline#colorscheme#zitchdog#palette"] = M.get()
	vim.fn["lightline#init"]()
	vim.fn["lightline#colorscheme"]()
	vim.fn["lightline#update"]()
end

return M
