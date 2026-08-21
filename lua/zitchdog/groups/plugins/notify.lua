local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		NotifyDEBUGBody = { fg = palette.cyan, bg = "NONE" },
		NotifyDEBUGBorder = { fg = palette.cyan },
		NotifyDEBUGIcon = { fg = palette.cyan },
		NotifyDEBUGTitle = { fg = palette.cyan },
		NotifyERRORBody = { fg = palette.red, bg = "NONE" },
		NotifyERRORBorder = { fg = palette.red },
		NotifyERRORIcon = { fg = palette.red },
		NotifyERRORTitle = { fg = palette.red },
		NotifyINFOBody = { fg = palette.blue, bg = "NONE" },
		NotifyINFOBorder = { fg = palette.blue },
		NotifyINFOIcon = { fg = palette.blue },
		NotifyINFOTitle = { fg = palette.blue },
		NotifyTRACEBody = { fg = palette.purple, bg = "NONE" },
		NotifyTRACEBorder = { fg = palette.purple },
		NotifyTRACEIcon = { fg = palette.purple },
		NotifyTRACETitle = { fg = palette.purple },
		NotifyWARNBody = { fg = palette.orange, bg = "NONE" },
		NotifyWARNBorder = { fg = palette.orange },
		NotifyWARNIcon = { fg = palette.orange },
		NotifyWARNTitle = { fg = palette.orange },
	}
	return groups
end

return M
