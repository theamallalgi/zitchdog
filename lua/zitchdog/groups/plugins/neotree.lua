local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

function M.create(palette, zitch_pattern, config)
	local groups = {
		NeoTreeDirectoryIcon = { bg = "NONE", fg = palette.yellow },
		NeoTreeDirectoryName = { bg = "NONE", fg = palette.yellow },
		NeoTreeFileName = { bg = "NONE", fg = palette.magenta },
		NeoTreeTitleBar = { bg = "NONE", fg = palette.magenta },
		NeoTreeCursorLine = { bg = config.transparent_bg and "NONE" or palette.darkblack },
		NeoTreeFloatBorder = { bg = config.transparent_bg and "NONE" or palette.charcoal, fg = palette.magenta },
		NeoTreeFloatNormal = { bg = config.transparent_bg and "NONE" or palette.charcoal, fg = palette.magenta },
		NeoTreeFloatTitle = { bg = palette.mulberry, fg = palette.magenta },
		NeoTreeIndentMarker = { bg = "NONE", fg = palette.gray },
	}
	return groups
end

return M
