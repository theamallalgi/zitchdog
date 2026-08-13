local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

function M.create(palette, zitch_pattern, config)
	local groups = {
		AlphaHeader = { fg = palette.purple, bg = "NONE" },
		AlphaButtonText = { fg = palette.mulberry, bg = "NONE", bold = true },
		AlphaButtonShortcut = { fg = palette.amethyst, bg = "NONE", italic = false },
		AlphaFooter = { fg = palette.mulberry, bg = "NONE", italic = false },
	}
	return groups
end

return M
