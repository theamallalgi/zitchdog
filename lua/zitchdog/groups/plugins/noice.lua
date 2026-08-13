local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
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
		-- lsp progress
		NoiceLspProgressTitle = { fg = palette.magenta, bg = "NONE", bold = true },
		NoiceLspProgressClient = { fg = palette.green, bg = "NONE", bold = true },
		NoiceLspProgressSpinner = { fg = palette.blue, bg = "NONE", bold = true },
		NoiceFormatProgressDone = { fg = palette.clay, bg = palette.yellow, bold = true },
		NoiceFormatProgressTodo = { fg = palette.yellow, bg = palette.clay, bold = true },
	}
	return groups
end

return M
