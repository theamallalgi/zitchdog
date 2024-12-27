local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type function
function M.get(palette)
	return {
		LazyNormal = { bg = palette.charcoal },
		LazyBorder = { fg = palette.magenta, bg = "NONE" },
	}
end

return M
