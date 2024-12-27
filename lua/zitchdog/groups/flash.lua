local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type function
function M.get(palette)
	return {
		FlashBackdrop = { fg = palette.mulberry, bg = "NONE", italic = false }, -- backdrop
		FlashMatch = { bg = palette.magenta, fg = palette.ebony }, -- search matches
		FlashCurrent = { bg = palette.yellow, fg = palette.ebony }, -- current match
		FlashLabel = { bg = palette.red, fg = palette.ebony }, -- jump label
		MyFlashBackdrop = { fg = palette.mulberry, bg = "NONE", italic = false }, -- backdrop
		MyFlashMatch = { bg = palette.magenta, fg = palette.ebony }, -- search matches
		MyFlashCurrent = { bg = palette.yellow, fg = palette.ebony }, -- current match
		MyFlashLabel = { bg = palette.red, fg = palette.ebony }, -- jump label
	}
end

return M
