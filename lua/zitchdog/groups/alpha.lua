local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type function
function M.get(palette)
	return {
		AlphaHeader = { fg = palette.green, bg = "NONE" },
		AlphaButton = { fg = palette.yellow, bg = "NONE" },
		AlphaButtonShortcut = { fg = palette.amethyst, bg = "NONE", italic = false },
		AlphaFooter = { fg = palette.blue, bg = "NONE" },
	}
end

return M
