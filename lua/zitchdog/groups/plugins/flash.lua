local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		FlashBackdrop = { fg = palette.mulberry, bg = "NONE", italic = false }, -- backdrop
		FlashMatch = { bg = palette.magenta, fg = palette.ebony }, -- search matches
		FlashCurrent = { bg = palette.yellow, fg = palette.ebony }, -- current match
		FlashLabel = { bg = palette.red, fg = palette.ebony }, -- jump label
	}
	return groups
end

return M
