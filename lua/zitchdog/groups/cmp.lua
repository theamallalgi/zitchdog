local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type function
function M.get(palette)
	return {
		cmpnormal = { bg = palette.black, fg = palette.magenta },
		CmpBorder = { bg = palette.black, fg = palette.magenta },
		CmpCursorLine = { bg = palette.lightblack, fg = palette.magenta, bold = true },
		CmpItemKindText = { bg = "NONE", fg = palette.magenta },
		CmpItemKind = { bg = "NONE", fg = palette.magenta },
		CmpItemAbbr = { bg = "NONE", fg = palette.magenta },
		CmpItemAbbrMatch = { bg = "NONE", fg = palette.green, bold = true },
		CmpItemAbbrMatchFuzzy = { bg = "NONE", fg = palette.maroon },
	}
end

return M
