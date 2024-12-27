local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type function
function M.get(palette)
	return {
		NotifyINFOBody = { fg = palette.blue, bg = "NONE" },
		NotifyDEBUGBody = { fg = palette.yellow, bg = "NONE" },
		NotifyERRORBody = { fg = palette.red, bg = "NONE" },
		NotifyTRACEBody = { fg = palette.purple, bg = "NONE" },
		NotifyWARNBody = { fg = palette.orange, bg = "NONE" },
	}
end

return M
