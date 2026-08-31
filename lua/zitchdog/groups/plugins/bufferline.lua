local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		BufferLineFill = { fg = palette.slate, bg = palette.darkblack },
		BufferLineTabClose = { fg = palette.red },
		BufferLineCloseButton = { fg = palette.maroon, bg = palette.aubergine },
		BufferLineCloseButtonVisible = { fg = palette.red, bg = palette.aubergine },
		BufferLineCloseButtonSelected = { fg = palette.red, bg = palette.black },
		BufferLineBackground = { fg = palette.slate, bg = palette.aubergine, italic = false },
		BufferLineBufferVisible = { fg = palette.purple, bg = palette.darkblack, bold = true },
		BufferLineBufferSelected = { fg = palette.purple, bg = palette.darkblack, bold = true },
		BufferLineNumbers = { fg = palette.slate, bg = palette.aubergine },
		BufferLineNumbersVisible = { fg = palette.slate },
		BufferLineNumbersSelected = { fg = palette.slate },
		BufferLineModified = { fg = palette.red, bg = palette.aubergine },
		BufferLineModifiedVisible = { fg = palette.orange },
		BufferLineModifiedSelected = { fg = palette.orange },
		BufferLineDuplicate = { fg = palette.slate, bg = palette.aubergine },
		BufferLineDuplicateVisible = { fg = palette.orange, bg = palette.darkblack },
		BufferLineDuplicateSelected = { fg = palette.orange, bg = palette.darkblack },
		BufferLineSeparator = { fg = palette.aubergine, bg = palette.aubergine },
		BufferLineSeparatorVisible = { fg = palette.darkblack },
		BufferLineSeparatorSelected = { fg = palette.darkblack },
		BufferLineTabSeparator = { fg = palette.aubergine, bg = palette.aubergine },
		BufferLineTabSeparatorSelected = { fg = palette.darkblack },
		BufferLineIndicatorSelected = { fg = palette.darkblack },
	}
	return groups
end

return M
