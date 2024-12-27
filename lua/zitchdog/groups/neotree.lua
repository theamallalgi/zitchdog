local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type function
function M.get(palette)
	return {
		NeoTreeDirectoryIcon = { bg = "NONE", fg = palette.yellow },
		NeoTreeDirectoryName = { bg = "NONE", fg = palette.yellow },
		NeoTreeFileName = { bg = "NONE", fg = palette.magenta },
		NeoTreeTitleBar = { bg = "NONE", fg = palette.magenta },
		NeoTreeCursorLine = { bg = "#21202b" },
		NeoTreeFloatBorder = { bg = palette.charcoal, fg = palette.magenta },
		NeoTreeFloatNormal = { bg = palette.charcoal, fg = palette.magenta },
		NeoTreeFloatTitle = { bg = palette.mulberry, fg = palette.magenta },
		NeoTreeIndentMarker = { bg = "NONE", fg = "#4f3e29" },
	}
end

return M
