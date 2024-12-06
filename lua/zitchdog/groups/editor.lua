local function createEditorGroup(palette, zitch)
	return {
		CursorLine = { bg = palette.charcoal },
		Cursor = { fg = palette.white, bg = palette.black },
		Directory = zitch.GreenBold,
		DiffAdd = { fg = palette.green, bg = palette.black, gui = "inverse" },
		DiffChange = { fg = palette.blue, bg = palette.black, gui = "inverse" },
		DiffDelete = { fg = palette.red, bg = palette.black, gui = "inverse" },
		DiffText = { fg = palette.orange, bg = palette.black, gui = "inverse" },
		EndOfBuffer = zitch.Background,
		ErrorMsg = { fg = palette.red, bg = palette.black, gui = "bold" },
		VertSplit = { fg = palette.black, bg = palette.black },
		Folded = { fg = palette.gray, gui = "italic" },
		FoldColumn = { fg = palette.gray, bg = palette.black },
		SignColumn = zitch.Background,
		IncSearch = { fg = palette.orange, bg = palette.black, gui = "inverse" },
		Substitute = { fg = palette.black, bg = palette.white },
		LineNr = zitch.PurpleFaded,
		CursorLineNr = { bg = palette.charcoal, fg = palette.lilac },
		MatchParen = { bg = palette.black, gui = "bold" },
		Normal = { fg = palette.white, bg = palette.black },
		Pmenu = { fg = palette.magenta, bg = palette.black },
		PmenuSel = { fg = palette.magenta, bg = palette.mulberry, gui = "bold" },
		PmenuSbar = { bg = palette.black },
		PmenuThumb = { bg = palette.black },
		Search = { fg = palette.black, bg = palette.yellow },
		SpecialKey = zitch.Foreground,
		SpellBad = zitch.RedUnderline,
		SpellCap = zitch.OrangeUnderline,
		SpellLocal = zitch.BlueUnderline,
		SpellRare = zitch.PurpleUnderline,
		TabLine = { fg = palette.gray, bg = palette.black },
		TabLineFill = { fg = palette.black, bg = palette.black },
		TabLineSel = { fg = palette.green, bg = palette.black, gui = "inverse" },
		Title = zitch.GreenBold,
		VisualNOS = { bg = palette.mauve, gui = "inverse" },
		WarningMsg = { fg = palette.orange, bg = palette.black, gui = "bold" },
		WildMenu = { fg = palette.blue, bg = palette.black, gui = "bold" },

		Comment = { fg = palette.gray, gui = "italic" },
		Constant = zitch.Purple,
		String = zitch.Green,
		Character = zitch.GreenBold,
		Number = zitch.Green,
		Boolean = zitch.Green,

		Identifier = zitch.Purple,
		Function = zitch.Orange,

		Statement = zitch.Purple,
		Conditional = zitch.Purple,
		Repeat = zitch.Purple,
		Label = zitch.Purple,
		Exception = zitch.Purple,
		Operator = zitch.Purple,
		Keyword = zitch.Purple,

		Include = zitch.Purple,
		Define = zitch.Purple,
		Macro = zitch.Purple,
		PreProc = zitch.Foreground,
		PreCondit = zitch.Purple,

		Type = zitch.Blue,
		StorageClass = zitch.Purple,
		Structure = zitch.Purple,
		Typedef = zitch.Purple,

		Special = zitch.Purple,
		SpecialChar = zitch.Purple,
		Tag = zitch.Foreground,
		SpecialComment = zitch.Gray,
		Debug = zitch.RedBold,
		Delimiter = zitch.PinkBold,

		Ignore = {},
		Bold = { gui = "bold" },
		Underlined = { gui = "underline" },
		Italic = { gui = "italic" },
		Error = { fg = palette.red, gui = "bold,underline" },
		Todo = { fg = palette.green, gui = "bold,italic" },

		MyFlashBackdrop = { bg = "NONE", fg = "#3d375e" }, -- backdrop
		MyFlashMatch = { bg = palette.magenta, fg = palette.ebony }, -- search matches
		MyFlashCurrent = { bg = palette.yellow, fg = palette.ebony }, -- current match
		MyFlashLabel = { bg = palette.red, fg = palette.ebony }, -- jump label

		cmpnormal = { bg = "#15141b", fg = "#554d84" },
		CmpBorder = { bg = "#15141b", fg = "#554d84" },
		CmpCursorLine = { bg = "#1b1a23", fg = "#a277ff", bold = true },
		CmpItemKindText = { bg = "NONE", fg = "#554d84" },
		CmpItemKind = { bg = "NONE", fg = "#554d84" },
		CmpItemAbbr = { bg = "NONE", fg = "#554d84" },
		CmpItemAbbrMatch = { bg = "NONE", fg = "#7a6ebe", bold = true },
		CmpItemAbbrMatchFuzzy = { bg = "NONE", fg = "#7a6ebe" },

		TelescopePromptBorder = { fg = palette.magenta },
		TelescopePromptNormal = { fg = palette.magenta, bg = palette.charcoal },
		TelescopePromptTitle = { fg = palette.magenta, bg = palette.mulberry, bold = true },
		TelescopePromptCounter = { fg = palette.graphite },
		TelescopePromptPrefix = { fg = palette.magenta },
		TelescopeResultsBorder = { fg = palette.magenta },
		TelescopeResultsNormal = { fg = palette.magenta, bg = palette.charcoal },
		TelescopeResultsTitle = { fg = palette.magenta, bg = palette.mulberry, bold = true },
		TelescopePreviewBorder = { fg = palette.magenta },
		TelescopePreviewNormal = { fg = palette.white, bg = palette.charcoal },
		TelescopePreviewTitle = { fg = palette.magenta, bg = palette.mulberry, bold = true },
		TelescopeMatching = { fg = palette.green, bg = palette.aubergine },
		TelescopeNormal = { bg = palette.magenta, fg = palette.red },
		TelescopePrompt = { fg = palette.cyan },
		TelescopeResults = { fg = palette.magenta },
		TelescopeSelection = { fg = palette.magenta, bg = "#21202b", bold = true },
		TelescopeSelectionCaret = { fg = palette.coral, bg = "#21202b" },

		NeoTreeDirectoryIcon = { bg = "NONE", fg = palette.yellow },
		NeoTreeDirectoryName = { bg = "NONE", fg = palette.yellow },
		NeoTreeFileName = { bg = "NONE", fg = palette.magenta },
		NeoTreeTitleBar = { bg = "NONE", fg = palette.magenta },
		NeoTreeCursorLine = { bg = "#21202b" },
		NeoTreeFloatBorder = { bg = palette.charcoal, fg = palette.magenta },
		NeoTreeFloatNormal = { bg = palette.charcoal, fg = palette.magenta },
		NeoTreeFloatTitle = { bg = palette.mulberry, fg = palette.magenta },
		NeoTreeIndentMarker = { bg = "NONE", fg = "#4f3e29" },

		LazyNormal = { bg = palette.charcoal },
		FloatBorder = { fg = palette.magenta },
		FloatTitle = { fg = palette.magenta },
		Float = { fg = palette.magenta },

		Visual = { bg = "#21202b" },
		WinSeparator = { fg = "#0f0f14", bg = "NONE" },
		StatusLine = { fg = "NONE", bg = "NONE" },
		StatusLineNC = { fg = "NONE", bg = "NONE" },

		DiagnosticError = { bg = "NONE", fg = palette.red },
		DiagnosticFloatingError = { bg = "NONE", fg = palette.red },
		DiagnosticSignError = { bg = "NONE", fg = palette.red },
		DiagnosticUndelineError = { bg = "NONE", fg = palette.red },
		DiagnosticVirtualTextError = { bg = palette.maroon, fg = palette.red },

		DiagnosticInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticFloatingInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticSignInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticUndelineInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticVirtualTextInfo = { bg = palette.teal, fg = palette.cyan },

		DiagnosticOk = { bg = "NONE", fg = palette.green },
		DiagnosticFloatingOk = { bg = "NONE", fg = palette.green },
		DiagnosticSignOk = { bg = "NONE", fg = palette.green },
		DiagnosticUndelineOk = { bg = "NONE", fg = palette.green },
		DiagnosticVirtualTextOk = { palette.pine, fg = palette.green },

		DiagnosticHint = { bg = "NONE", fg = palette.blue },
		DiagnosticFloatingHint = { bg = "NONE", fg = palette.blue },
		DiagnosticSignHint = { bg = "NONE", fg = palette.red },
		DiagnosticUndelineHint = { bg = "NONE", fg = palette.red },
		DiagnosticVirtualTextHint = { bg = palette.indigo, fg = palette.red },

		DiagnosticWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticFloatingWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticSignWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticUndelineWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticVirtualTextWarn = { bg = palette.clay, fg = palette.orange },

		NoiceCmdlinePopupBorder = { fg = palette.green, bg = "NONE" },
		NoiceCmdlineIcon = { fg = palette.green, bg = "NONE" },
		NoiceCmdlinePopupBorderCalculator = { fg = palette.green, bg = "NONE" },
		NoiceCmdlineIconCalculator = { fg = palette.green, bg = "NONE" },
		NoiceCmdlinePopupBorderCmdline = { fg = palette.green, bg = "NONE" },
		NoiceCmdlineIconCmdline = { fg = palette.green, bg = "NONE" },
		NoiceCmdlinePopupBorderFilter = { fg = palette.green, bg = "NONE" },
		NoiceCmdlineIconFilter = { fg = palette.green, bg = "NONE" },
		NoiceCmdlinePopupBorderHelp = { fg = palette.yellow, bg = "NONE" },
		NoiceCmdlineIconHelp = { fg = palette.yellow, bg = "NONE" },
		NoiceCmdlinePopupBorderIncRename = { fg = palette.blue, bg = "NONE" },
		NoiceCmdlineIconIncRename = { fg = palette.blue, bg = "NONE" },
		NoiceCmdlinePopupBorderInput = { fg = palette.green, bg = "NONE" },
		NoiceCmdlineIconInput = { fg = palette.green, bg = "NONE" },
		NoiceCmdlinePopupBorderLua = { fg = palette.green, bg = "NONE" },
		NoiceCmdlineIconLua = { fg = palette.green, bg = "NONE" },
		NoiceCmdlinePopupBorderSearch = { fg = palette.orange, bg = "NONE" },
		NoiceCmdlineIconSearch = { fg = palette.orange, bg = "NONE" },
	}
end

return {
	create = createEditorGroup,
}
