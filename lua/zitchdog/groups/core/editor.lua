local M = {}

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local bg = config.transparent_bg and "NONE" or palette.black
	local darkBg = config.transparent_bg and "NONE" or palette.darkblack
	local groups = {
		CursorLine = {
			bg = config.disable_cursorline and (config.transparent_bg and "NONE" or palette.black)
				or palette.lightblack,
		},
		-- CursorLine = { bg = palette.lightblack }, -- default
		-- CursorLine = { bg = config.transparent_bg and "NONE" or palette.charcoal }, -- when hidden
		Cursor = { bg = palette.orange },
		lCursor = { bg = palette.magenta },
		CursorIM = { bg = palette.magenta },
		Directory = zitch_pattern.GreenBold,
		DiffAdd = { fg = palette.green, bg = palette.pine },
		DiffChange = { fg = palette.blue, bg = palette.indigo },
		DiffDelete = { fg = palette.red, bg = palette.maroon },
		DiffText = { fg = palette.orange, bg = palette.clay },
		EndOfBuffer = { fg = bg },
		ErrorMsg = { fg = palette.red, bg = bg, gui = "bold" },
		VertSplit = { fg = bg, bg = bg },
		Folded = { fg = palette.gray, gui = "italic" },
		FoldColumn = { fg = palette.gray, bg = bg },
		SignColumn = { bg = bg },
		IncSearch = { fg = palette.umber, bg = palette.red },
		Substitute = { fg = bg, bg = palette.white },
		LineNr = zitch_pattern.PurpleFaded,
		CursorLineNr = { bg = config.transparent_bg and "NONE" or palette.charcoal, fg = palette.lilac },
		MatchParen = { fg = palette.mulberry, bg = palette.red, bold = true },
		Normal = { fg = palette.white, bg = bg },
		Pmenu = { fg = palette.magenta, bg = bg },
		PmenuSel = { fg = palette.magenta, bg = palette.mulberry, gui = "bold" },
		-- PmenuSbar = { bg = bg },
		PmenuSbar = { bg = palette.amethyst },
		PmenuThumb = { bg = palette.amethyst },
		Search = { fg = palette.umber, bg = palette.yellow },
		SpecialKey = zitch_pattern.Foreground,
		SpellBad = { undercurl = true, sp = palette.red },
		SpellCap = { undercurl = true, sp = palette.orange },
		SpellRare = { undercurl = true, sp = palette.purple },
		SpellLocal = { undercurl = true, sp = palette.cyan },
		Title = zitch_pattern.GreenBold,
		VisualNOS = { bg = palette.mauve, gui = "inverse" },
		WarningMsg = { fg = palette.orange, bg = bg, gui = "bold" },
		NormalFloat = { bg = palette.darkblack },
		WinBarNC = { bg = palette.darkblack },
		WinBar = { bg = palette.darkblack },
		CurSearch = { fg = palette.cyan, bg = palette.teal },
		ColorColumn = { bg = palette.mauve },
		WildMenu = { fg = palette.purple, bg = palette.graphite },
		Visual = { bg = palette.graphite },
		Question = { fg = palette.purple },
		ModeMsg = { fg = palette.white, gui = "bold" },
		MoreMsg = { fg = palette.white, gui = "bold" },
		WinSeparator = { fg = palette.amethyst },
		Whitespace = { fg = palette.gray },
		NonText = { fg = palette.gray },
		Conceal = { fg = palette.gray },
		Error = { fg = palette.red },
		FloatBorder = { fg = palette.magenta },
		FloatTitle = { fg = palette.purple, bg = palette.amethyst },
		Float = { fg = palette.magenta },
		MsgArea = { fg = palette.yellow },

		-- statuscolumn
		StatusLine = { fg = palette.slate, bg = palette.darkblack, bold = false },
		StatusLineNC = { fg = palette.slate, bg = palette.darkblack },
		StatusLineTerm = { fg = palette.green, bg = palette.pine, bold = true },
		StatusLineTermNC = { fg = palette.slate, bg = palette.darkblack },
		User1 = { fg = palette.purple, bg = palette.amethyst, bold = true },
		User2 = { fg = palette.yellow, bg = palette.umber, bold = true },
		User3 = { fg = palette.purple, bg = palette.amethyst, bold = true },
		User4 = { fg = palette.slate, bg = palette.darkblack, bold = true },
		User5 = { fg = palette.black, bg = palette.darkblack, bold = true },
		User6 = { fg = palette.black, bg = palette.darkblack, bold = true },
		User7 = { fg = palette.black, bg = palette.darkblack, bold = true },
		User8 = { fg = palette.purple, bg = palette.amethyst, bold = true },
		User9 = { fg = palette.green, bg = palette.pine, bold = true },

		-- tabline
		TabLine = { fg = palette.slate, bg = palette.aubergine, italic = false },
		TabLineFill = { fg = palette.slate, bg = palette.darkblack },
		TabLineSel = { fg = palette.purple, bg = darkBg, bold = true },

		-- netrw
		netrwDir = { bg = "NONE", fg = palette.yellow, bold = true },
		netrwSymLink = { bg = "NONE", fg = palette.cyan },
		netrwLink = { bg = "NONE", fg = palette.cyan },
		netrwExe = { bg = "NONE", fg = palette.green, bold = true },
		netrwPlain = { bg = "NONE", fg = palette.magenta },
		netrwTreeBar = { bg = "NONE", fg = palette.gray },
		netrwMarkFile = { bg = palette.mulberry, fg = palette.magenta, bold = true },
		netrwClassify = { bg = "NONE", fg = palette.yellow },
		netrwHdr = { bg = "NONE", fg = palette.magenta, bold = true },
		netrwHelpCmd = { bg = "NONE", fg = palette.cyan, bold = true },
		netrwQuickHelp = { bg = "NONE", fg = palette.gray, italic = true },
		netrwHide = { bg = "NONE", fg = palette.gray, italic = true },
		netrwHidePat = { bg = "NONE", fg = palette.gray, italic = true },
		netrwComment = { bg = "NONE", fg = palette.gray, italic = true },
		netrwCompress = { bg = "NONE", fg = palette.coral },
		netrwPix = { bg = "NONE", fg = palette.cyan },
		netrwDoc = { bg = "NONE", fg = palette.blue },
		netrwData = { bg = "NONE", fg = palette.blue },
		netrwLib = { bg = "NONE", fg = palette.green },
		netrwMakefile = { bg = "NONE", fg = palette.yellow, bold = true },
		netrwTags = { bg = "NONE", fg = palette.cyan },
		netrwObj = { bg = "NONE", fg = palette.red },
		netrwBak = { bg = "NONE", fg = palette.gray },
		netrwTmp = { bg = "NONE", fg = palette.gray },
		netrwTilde = { bg = "NONE", fg = palette.gray },
		netrwLex = { bg = "NONE", fg = palette.green },
		netrwYacc = { bg = "NONE", fg = palette.green },
		netrwCoreDump = { bg = "NONE", fg = palette.red, bold = true },
		netrwGray = { bg = "NONE", fg = palette.gray },
		netrwList = { bg = "NONE", fg = palette.white },
		netrwVersion = { bg = "NONE", fg = palette.magenta, italic = true },

    -- quickfix list
    QuickFixLine = { fg = palette.green, bg = palette.pine },
    qfFileName = { fg = palette.slate },
    qfLineNr = { fg = palette.yellow },
    qfSeparator1 = { fg = palette.amethyst },
    qfSeparator2 = { fg = palette.amethyst },
    qfText = { fg = palette.purple },
    qfError = { fg = palette.red, bg = palette.maroon, bold = true },

	}
	return groups
end

return M
