local core = {}

function core.createHighlightCommands(groups)
	local commands = {}

	for group, styles in pairs(groups) do
		local gui = styles.gui and "gui=" .. styles.gui or "gui=NONE"
		local fg = styles.fg and "guifg=" .. styles.fg or "guifg=NONE"
		local bg = styles.bg and "guibg=" .. styles.bg or "guibg=NONE"
		local sp = styles.sp and "guisp=" .. styles.sp or ""

		local hl = nil

		if sp ~= "" then
			hl = "highlight " .. group .. " " .. gui .. " " .. fg .. " " .. bg .. " " .. sp
		else
			hl = "highlight " .. group .. " " .. gui .. " " .. fg .. " " .. bg
		end

		table.insert(commands, hl)
	end

	return commands
end

function core.createPaletteByPattern(pattern)
	local palette = require("zitchdog.common.palette")

	local function normalizeHex(hex)
		return string.sub(hex, 1, 7)
	end

	if pattern == "zitchdog" then
		palette.purple = normalizeHex("#a277ff")
		palette.green = normalizeHex("#61ffca")
		palette.orange = normalizeHex("#ffca85")
		palette.coral = normalizeHex("#ff7b7b")
		palette.cyan = normalizeHex("#61ffca")
		palette.red = normalizeHex("#ff6767")
		palette.pink = normalizeHex("#f694ff")
		palette.white = normalizeHex("#edecee")
		palette.gray = normalizeHex("#6d6d6d")
		palette.ash = normalizeHex("#29263c")
		palette.black = normalizeHex("#15141b")
		palette.magenta = normalizeHex("#a277ff")
		palette.yellow = normalizeHex("#ffca85")
		palette.mauve = normalizeHex("#3d375e7f")
		palette.blue = normalizeHex("#82e2ff")
		palette.charcoal = normalizeHex("#15141b")
		palette.slate = normalizeHex("#433e62")
		palette.graphite = normalizeHex("#3b4261")
		palette.lilac = normalizeHex("#776eae")
		palette.amethyst = normalizeHex("#333352")
		palette.aubergine = normalizeHex("#232338")
		palette.ebony = normalizeHex("#12121c")
		palette.maroon = normalizeHex("#652929")
		palette.pine = normalizeHex("#123127")
		palette.indigo = normalizeHex("#2f234b")
		palette.umber = normalizeHex("#4b3b27")
		palette.clay = normalizeHex("#4b2424")
		palette.mulberry = normalizeHex("#433e62")
	elseif pattern == "zitchdog-day" then
		palette.purple = normalizeHex("#a277ff")
		palette.green = normalizeHex("#61ffca")
		palette.orange = normalizeHex("#ffca85")
		palette.red = normalizeHex("#ff6767")
		palette.pink = normalizeHex("#f694ff")
		palette.white = normalizeHex("#edecee")
		palette.gray = normalizeHex("#6d6d6d")
		palette.black = normalizeHex("#15141b")
		palette.magenta = normalizeHex("#a277ff")
		palette.yellow = normalizeHex("#ff7b7b")
		palette.mauve = normalizeHex("#3d375e7f")
		palette.blue = normalizeHex("#82e2ff")
		palette.charcoal = normalizeHex("#15141b")
		palette.slate = normalizeHex("#433e62")
		palette.graphite = normalizeHex("#3b4261")
		palette.lilac = normalizeHex("#776eae")
		palette.amethyst = normalizeHex("#333352")
		palette.aubergine = normalizeHex("#232338")
		palette.ebony = normalizeHex("#12121c")
	end

	return palette
end

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

function core.createGroups(palette)
	local util = require("zitchdog.common.util")
	local groups = {}
	local pattern = core.createZitchPattern(palette)

	util.mergeTo(groups, require("zitchdog.groups.editor").create(palette, pattern))
	util.mergeTo(groups, require("zitchdog.groups.languages").create(palette, pattern))
	util.mergeTo(groups, require("zitchdog.groups.treesitter").create(palette, pattern))

	return groups
end

function core.createTheme(palette)
	local color = require("zitchdog.common.color")

	vim.g.terminal_color_0 = palette.black
	vim.g.terminal_color_8 = color.darken(palette.black, 0.4)

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

	local groups = core.createGroups(palette)
	local commands = core.createHighlightCommands(groups)

	vim.api.nvim_command("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	for i = 1, #commands do
		vim.cmd(commands[i])
	end
end

return core
