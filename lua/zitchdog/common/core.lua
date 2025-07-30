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

function core.createPaletteByVariant(variant)
	local palette = require("zitchdog.common.palette").variants[variant]
	local variant_name = "zitchdog-" .. variant
	return palette, variant_name
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

function core.createGroups(palette, zitch)
	return require("zitchdog.groups").setup(palette, zitch)
end

function core.createTheme(palette, zitch)
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

	local groups = core.createGroups(palette, zitch)
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
