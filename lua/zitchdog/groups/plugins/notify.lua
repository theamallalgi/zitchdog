local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		NotifyINFOBody = { fg = palette.blue, bg = "NONE" },
		NotifyDEBUGBody = { fg = palette.yellow, bg = "NONE" },
		NotifyERRORBody = { fg = palette.red, bg = "NONE" },
		NotifyTRACEBody = { fg = palette.purple, bg = "NONE" },
		NotifyWARNBody = { fg = palette.orange, bg = "NONE" },
		NotifyERRORBorder = { fg = palette.red },
		NotifyERRORIcon = { fg = palette.red },
		NotifyERRORTitle = { fg = palette.red },
		NotifyWARNBorder = { fg = palette.orange },
		NotifyWARNIcon = { fg = palette.orange },
		NotifyWARNTitle = { fg = palette.orange },
		NotifyINFOBorder = { fg = palette.blue },
		NotifyINFOIcon = { fg = palette.blue },
		NotifyINFOTitle = { fg = palette.blue },
	}
	return groups
end

return M
