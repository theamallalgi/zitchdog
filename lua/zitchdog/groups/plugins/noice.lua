local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- lsp progress
		NoiceLspProgressTitle = { fg = palette.magenta, bg = "NONE", bold = true },
		NoiceLspProgressClient = { fg = palette.green, bg = "NONE", bold = true },
		NoiceLspProgressSpinner = { fg = palette.blue, bg = "NONE", bold = true },
		NoiceFormatProgressDone = { fg = palette.clay, bg = palette.yellow, bold = true },
		NoiceFormatProgressTodo = { fg = palette.yellow, bg = palette.clay, bold = true },
		-- cmdline
		NoiceCmdline = { fg = palette.purple },
		NoiceCmdlinePopupBorderCmdline = { fg = palette.purple },
		NoiceCmdlinePopupBorder = { fg = palette.slate },
		NoiceCmdlinePopupTitle = { fg = palette.green },
		NoicePopupmenuMatch = { fg = palette.green, bg = palette.pine, bold = true },
		NoiceCmdlinePopupBorderSearch = { fg = palette.orange },
		NoiceCmdlinePopupBorderFilter = { fg = palette.blue },
		NoiceCmdlinePopupBorderLua = { fg = palette.blue },
		NoiceCmdlinePopupBorderHelp = { fg = palette.yellow },
		NoiceCmdlinePopupBorderInput = { fg = palette.blue },
		NoiceCmdlinePopupBorderCalculator = { fg = palette.cyan },
		NoiceCmdlinePopupBorderIncRename = { fg = palette.yellow },
		NoiceCmdlineIcon = { fg = palette.cyan, bg = palette.black },
		NoiceCmdlineIconCmdline = { fg = palette.slate },
		NoiceCmdlineIconSearch = { fg = palette.orange },
		NoiceCmdlineIconFilter = { fg = palette.blue },
		NoiceCmdlineIconLua = { fg = palette.blue },
		NoiceCmdlineIconHelp = { fg = palette.yellow },
		NoiceCmdlineIconInput = { fg = palette.blue },
		NoiceCmdlineIconCalculator = { fg = palette.cyan },
		NoiceCmdlineIconIncRename = { fg = palette.yellow },
	}
	return groups
end

return M
