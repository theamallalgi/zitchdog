local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		RainbowDelimiterRed = { fg = palette.red },
		RainbowDelimiterOrange = { fg = palette.orange },
		RainbowDelimiterYellow = { fg = palette.yellow },
		RainbowDelimiterGreen = { fg = palette.green },
		RainbowDelimiterBlue = { fg = palette.blue },
		RainbowDelimiterViolet = { fg = palette.purple },
		RainbowDelimiterCyan = { fg = palette.cyan },
	}
	return groups
end

return M
