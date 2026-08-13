local core = {}

---@class ZitchdogHighlight
---@field fg string?
---@field bg string?
---@field sp string?
---@field gui string?
---@field bold boolean?
---@field italic boolean?
---@field underline boolean?
---@field undercurl boolean?
---@field strikethrough boolean?
---@field reverse boolean?
---@field standout boolean?
---@field nocombine boolean?
---@field blend integer?
---@alias ZitchdogHighlights table<string, ZitchdogHighlight>

-- INFO: maps a legacy comma separated `gui` string (e.g. "bold,italic") to boolean attributes
-- INFO: understood by nvim_set_hl, for groups that still use the old `gui = "..."` convention.
---@param gui string?
---@return ZitchdogHighlight
local function guiToAttrs(gui)
	if not gui then
		return {}
	end
	return {
		bold = gui:find("bold") ~= nil or nil,
		italic = gui:find("italic") ~= nil or nil,
		underline = gui:find("underline") ~= nil or nil,
		undercurl = gui:find("undercurl") ~= nil or nil,
		strikethrough = gui:find("strikethrough") ~= nil or nil,
		reverse = gui:find("inverse") ~= nil or nil,
	}
end

-- INFO: applies a table of { GroupName = { fg, bg, sp, gui, bold, italic, ... } }
-- INFO: via nvim_set_hl instead of building "highlight ..." strings and running
-- INFO: them through vim.cmd(). This is faster (no string parsing on every
-- INFO: reload) and safe: color values coming from user config (config.colors,
-- INFO: config.fg, config.bg) are passed as plain Lua table values instead of
-- INFO: being concatenated into an Ex command string, so a stray "|" or ":" in
-- INFO: a user-supplied color can't be interpreted as a second command.
---@param groups ZitchdogHighlights
function core.applyHighlights(groups)
	for group, styles in pairs(groups) do
		local attrs = guiToAttrs(styles.gui)

		vim.api.nvim_set_hl(0, group, {
			fg = styles.fg,
			bg = styles.bg,
			sp = styles.sp,
			bold = styles.bold or attrs.bold,
			italic = styles.italic or attrs.italic,
			underline = styles.underline or attrs.underline,
			undercurl = styles.undercurl or attrs.undercurl,
			strikethrough = styles.strikethrough or attrs.strikethrough,
			reverse = styles.reverse or attrs.reverse,
			standout = styles.standout,
			nocombine = styles.nocombine,
			blend = styles.blend,
		})
	end
end

---@param variant ZitchdogVariant
---@param config ZitchdogConfig?
---@return ZitchdogPalette palette
---@return string variant_name
function core.createPaletteByVariant(variant, config)
	config = config or {}

	local base = require("zitchdog.common.palette").variants[variant]
	assert(base, "zitchdog: unknown variant '" .. tostring(variant) .. "'")

	local variant_name = "zitchdog-" .. variant

	-- INFO: copy so overrides never mutate the shared variant table in common/palette.lua
	-- INFO: that table is reused every time the colorscheme is (re)loaded.
	local palette = vim.tbl_extend("force", {}, base)

	if config.fg then
		palette.white = config.fg
	end
	if config.bg then
		palette.black = config.bg
	end
	if config.colors and next(config.colors) ~= nil then
		palette = vim.tbl_extend("force", palette, config.colors)
	end

	return palette, variant_name
end

---@param palette ZitchdogPalette
---@return ZitchdogHighlights
function core.createZitchPattern(palette)
	return {
		Foreground = { fg = palette.white },
		ForegroundBold = { fg = palette.white, gui = "bold" },
		ForegroundUnderline = { fg = palette.white, sp = palette.white },
		Background = { fg = palette.black },
		BackgroundBold = { fg = palette.black, gui = "bold" },
		BackgroundUnderline = { fg = palette.black, sp = palette.black },

		Gray = { fg = palette.gray },
		Red = { fg = palette.red },
		RedBold = { fg = palette.red, gui = "bold" },
		Green = { fg = palette.green },
		GreenBold = { fg = palette.green, gui = "bold" },
		Blue = { fg = palette.blue },
		BlueBold = { fg = palette.blue, gui = "bold" },
		Purple = { fg = palette.purple },
		PurpleBold = { fg = palette.purple, gui = "bold" },
		PurpleFaded = { fg = palette.mauve },
		PurpleFadedBold = { fg = palette.mauve, gui = "bold" },
		Orange = { fg = palette.orange },
		OrangeBold = { fg = palette.orange, gui = "bold" },
		Pink = { fg = palette.pink },
		PinkBold = { fg = palette.pink, gui = "bold" },

		RedSign = { fg = palette.red, bg = palette.black, gui = "inverse" },
		GreenSign = { fg = palette.green, bg = palette.black, gui = "inverse" },
		BlueSign = { fg = palette.blue, bg = palette.black, gui = "inverse" },
		PurpleSign = { fg = palette.purple, bg = palette.black, gui = "inverse" },
		PurpleFadedSign = { fg = palette.mauve, bg = palette.black, gui = "inverse" },
		OrangeSign = { fg = palette.orange, bg = palette.black, gui = "inverse" },
		PinkSign = { fg = palette.pink, bg = palette.black, gui = "inverse" },

		RedUnderline = { fg = palette.red, gui = "undercurl", sp = palette.red },
		GreenUnderline = { fg = palette.green, gui = "undercurl", sp = palette.green },
		BlueUnderline = { fg = palette.blue, gui = "undercurl", sp = palette.blue },
		PurpleUnderline = { fg = palette.purple, gui = "undercurl", sp = palette.purple },
		PurpleFadedUnderline = { fg = palette.mauve, gui = "undercurl", sp = palette.mauve },
		OrangeUnderline = { fg = palette.orange, gui = "undercurl", sp = palette.orange },
		PinkUnderline = { fg = palette.pink, gui = "undercurl", sp = palette.pink },
	}
end

---@param palette ZitchdogPalette
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function core.createGroups(palette, config)
	return require("zitchdog.groups").setup(palette, config)
end

-- INFO: forces lualine to pick up the latest zitchdog palette. lualine caches
-- INFO: its theme module the first time it's required, so a plain colorscheme
-- INFO: switch never touches it on its own; this evicts the cached module and
-- INFO: re-runs lualine's setup() so the statusline colors actually follow the
-- INFO: new variant/overrides. No-ops silently if lualine isn't installed.
function core.refreshLualine()
	local ok_lualine, lualine = pcall(require, "lualine")
	if not ok_lualine then
		return
	end

	package.loaded["lualine.themes.zitchdog"] = nil

	local ok_config, cfg = pcall(lualine.get_config)
	if ok_config then
		lualine.setup(cfg)
	end
end

---@param palette ZitchdogPalette
---@param config ZitchdogConfig
function core.createTheme(palette, config)
	local color = require("zitchdog.common.color")

	vim.g.terminal_color_0 = palette.black
	vim.g.terminal_color_8 = color.darken(palette.black, 0.4, palette.black)

	vim.g.terminal_color_1 = palette.red
	vim.g.terminal_color_9 = palette.red

	vim.g.terminal_color_2 = palette.green
	vim.g.terminal_color_10 = palette.green

	vim.g.terminal_color_3 = palette.orange
	vim.g.terminal_color_11 = palette.orange

	vim.g.terminal_color_4 = palette.blue
	vim.g.terminal_color_12 = palette.blue

	vim.g.terminal_color_5 = palette.purple
	vim.g.terminal_color_13 = palette.purple

	vim.g.terminal_color_6 = palette.blue
	vim.g.terminal_color_14 = palette.blue

	vim.g.terminal_color_7 = palette.white
	vim.g.terminal_color_15 = palette.white

	local groups = core.createGroups(palette, config)

	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.api.nvim_command("syntax reset")
	end

	core.applyHighlights(groups)

	-- INFO: share the fully resolved palette (variant + fg/bg/colors overrides)
	-- INFO: so companion modules such as the lualine theme can stay in sync
	-- INFO: instead of re-deriving a stale, un-overridden palette on their own.
	require("zitchdog.state").set(palette, config)

	core.refreshLualine()
end

return core
