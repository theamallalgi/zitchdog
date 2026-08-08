local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		NotifyINFOBody = { fg = palette.blue, bg = "NONE" },
		NotifyDEBUGBody = { fg = palette.yellow, bg = "NONE" },
		NotifyERRORBody = { fg = palette.red, bg = "NONE" },
		NotifyTRACEBody = { fg = palette.purple, bg = "NONE" },
		NotifyWARNBody = { fg = palette.orange, bg = "NONE" },
	}
	return groups
end

return M
