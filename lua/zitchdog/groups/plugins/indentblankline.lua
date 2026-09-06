local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		IblIndent = { fg = palette.mulberry, bg = "NONE", italic = false },
		IblScope = { fg = palette.lilac, bg = "NONE", italic = false },
		IblWhitespace = { fg = palette.mulberry, bg = "NONE", italic = false },
	}
	return groups
end

return M
