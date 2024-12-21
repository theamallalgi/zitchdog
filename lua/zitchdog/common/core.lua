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

	if pattern == "zitchdog-night" then
		palette.purple = normalizeHex("#a277ff")
		palette.green = normalizeHex("#61ffca")
		palette.orange = normalizeHex("#ffca85")
		palette.coral = normalizeHex("#ff7b7b")
		palette.cyan = normalizeHex("#26f9eb")
		palette.red = normalizeHex("#ff6767")
		palette.pink = normalizeHex("#f694ff")
		palette.white = normalizeHex("#f6ceff")
		palette.gray = normalizeHex("#6d6d6d")
		palette.ash = normalizeHex("#29263c")
		palette.black = normalizeHex("#15141b")
		palette.darkblack = normalizeHex("#131218 ")
		palette.magenta = normalizeHex("#a277ff")
		palette.yellow = normalizeHex("#ffca85")
		palette.mauve = normalizeHex("#3d375e7f")
		palette.blue = normalizeHex("#82e2ff")
		palette.charcoal = normalizeHex("#15141b")
		palette.slate = normalizeHex("#542a91")
		palette.graphite = normalizeHex("#272045")
		palette.lilac = normalizeHex("#776eae")
		palette.amethyst = normalizeHex("#333352")
		palette.aubergine = normalizeHex("#232338")
		palette.ebony = normalizeHex("#12121c")
		palette.maroon = normalizeHex("#652929")
		palette.pine = normalizeHex("#123127")
		palette.indigo = normalizeHex("#345a65")
		palette.umber = normalizeHex("#4b3b27")
		palette.clay = normalizeHex("#4b2424")
		palette.mulberry = normalizeHex("#433e62")
		palette.teal = normalizeHex("#0e5e59")
		palette.lightblack = normalizeHex("#1a1b26")
		palette.darkblack = normalizeHex("#131218")
	elseif pattern == "zitchdog-pine" then
		palette.purple = normalizeHex("#844364")
		palette.green = normalizeHex("#46914d")
		palette.orange = normalizeHex("#e47833")
		palette.coral = normalizeHex("#e4462f")
		palette.cyan = normalizeHex("#188e5c")
		palette.red = normalizeHex("#e43728")
		palette.pink = normalizeHex("#da5b64")
		palette.white = normalizeHex("#da7a64")
		palette.gray = normalizeHex("#513c2a")
		palette.ash = normalizeHex("#191219")
		palette.black = normalizeHex("#0d0910")
		palette.darkblack = normalizeHex("#0b080e")
		palette.magenta = normalizeHex("#834264")
		palette.yellow = normalizeHex("#e37832")
		palette.mauve = normalizeHex("#281b24")
		palette.blue = normalizeHex("#658265")
		palette.charcoal = normalizeHex("#0d0910")
		palette.slate = normalizeHex("#542a91")
		palette.graphite = normalizeHex("#272045")
		palette.lilac = normalizeHex("#5a3b42")
		palette.amethyst = normalizeHex("#201520")
		palette.aubergine = normalizeHex("#151019")
		palette.ebony = normalizeHex("#0a090f")
		palette.maroon = normalizeHex("#481214")
		palette.pine = normalizeHex("#0a1613")
		palette.indigo = normalizeHex("#212e27")
		palette.umber = normalizeHex("#321c12")
		palette.clay = normalizeHex("#331011")
		palette.mulberry = normalizeHex("#2d1e26")
		palette.teal = normalizeHex("#083122")
		palette.lightblack = normalizeHex("#100d17")
		palette.darkblack = normalizeHex("#0b080e")
	elseif pattern == "zitchdog-grape" then
		palette.purple = normalizeHex("#8543e4")
		palette.green = normalizeHex("#46cda8")
		palette.orange = normalizeHex("#e39069")
		palette.coral = normalizeHex("#e4465d")
		palette.cyan = normalizeHex("#17c5cb")
		palette.red = normalizeHex("#e4384c")
		palette.pink = normalizeHex("#d95be2")
		palette.white = normalizeHex("#db94e3")
		palette.gray = normalizeHex("#513b50")
		palette.ash = normalizeHex("#191324")
		palette.black = normalizeHex("#0d0910")
		palette.darkblack = normalizeHex("#0b080e")
		palette.magenta = normalizeHex("#8443e4")
		palette.yellow = normalizeHex("#e09066")
		palette.mauve = normalizeHex("#281a42")
		palette.blue = normalizeHex("#64aae2")
		palette.charcoal = normalizeHex("#0d0910")
		palette.slate = normalizeHex("#542a91")
		palette.graphite = normalizeHex("#272045")
		palette.lilac = normalizeHex("#5a3c8d")
		palette.amethyst = normalizeHex("#201638")
		palette.aubergine = normalizeHex("#150f25")
		palette.ebony = normalizeHex("#09080e")
		palette.maroon = normalizeHex("#481219")
		palette.pine = normalizeHex("#0b1618")
		palette.indigo = normalizeHex("#212f4a")
		palette.umber = normalizeHex("#331b17")
		palette.clay = normalizeHex("#331016")
		palette.mulberry = normalizeHex("#2e1d46")
		palette.teal = normalizeHex("#08313f")
		palette.lightblack = normalizeHex("#100d17")
		palette.darkblack = normalizeHex("#0b080e")
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
