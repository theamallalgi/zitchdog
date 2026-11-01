local M = {}

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- TODO: replace the hex codes
		RunnerTitle = { fg = "#c0c9c3", bg = "#051177", bold = true },
		RunnerBorder = { fg = "#191324", bg = "#191324" },
		RunnerNormal = { bg = "#191324", fg = "#c0c9c3" },
		RunnerError = { bg = palette.maroon, fg = palette.red },
		RunnerWarn = { bg = palette.umber, fg = palette.yellow },
		RunnerHint = { bg = palette.indigo, fg = palette.blue },
	}
	return groups
end

return M
