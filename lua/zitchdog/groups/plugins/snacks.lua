local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- snacks notifier
		SnacksNotifierError = { fg = palette.red },
		SnacksNotifierBorderError = { fg = palette.red },
		SnacksNotifierTitleError = { fg = palette.red, bold = true },
		SnacksNotifierFooterError = { fg = palette.red },
		SnacksNotifierWarn = { fg = palette.orange },
		SnacksNotifierBorderWarn = { fg = palette.orange },
		SnacksNotifierTitleWarn = { fg = palette.orange, bold = true },
		SnacksNotifierFooterWarn = { fg = palette.orange },
		SnacksNotifierInfo = { fg = palette.blue },
		SnacksNotifierBorderInfo = { fg = palette.blue },
		SnacksNotifierTitleInfo = { fg = palette.blue, bold = true },
		SnacksNotifierFooterInfo = { fg = palette.blue },
		SnacksNotifierDebug = { fg = palette.cyan },
		SnacksNotifierBorderDebug = { fg = palette.cyan },
		SnacksNotifierTitleDebug = { fg = palette.cyan, bold = true },
		SnacksNotifierFooterDebug = { fg = palette.cyan },
		SnacksNotifierTrace = { fg = palette.purple },
		SnacksNotifierBorderTrace = { fg = palette.purple },
		SnacksNotifierTitleTrace = { fg = palette.purple, bold = true },
		SnacksNotifierFooterTrace = { fg = palette.purple },
	}
	return groups
end

return M
