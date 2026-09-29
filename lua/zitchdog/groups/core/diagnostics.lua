local M = {}

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- error messages
		DiagnosticError = { bg = "NONE", fg = palette.red },
		DiagnosticFloatingError = { bg = "NONE", fg = palette.red },
		DiagnosticSignError = { bg = "NONE", fg = palette.red },
		DiagnosticVirtualTextError = { bg = palette.maroon, fg = palette.red },
		-- warning messages
		DiagnosticWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticFloatingWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticSignWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticVirtualTextWarn = { bg = palette.clay, fg = palette.orange },
		-- hint messages
		DiagnosticHint = { bg = "NONE", fg = palette.blue },
		DiagnosticFloatingHint = { bg = "NONE", fg = palette.blue },
		DiagnosticSignHint = { bg = "NONE", fg = palette.blue },
		DiagnosticVirtualTextHint = { bg = palette.indigo, fg = palette.blue },
		-- info messages
		DiagnosticInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticFloatingInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticSignInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticVirtualTextInfo = { bg = palette.teal, fg = palette.cyan },
		-- ok messages
		DiagnosticOk = { bg = "NONE", fg = palette.green },
		DiagnosticFloatingOk = { bg = "NONE", fg = palette.green },
		DiagnosticSignOk = { bg = "NONE", fg = palette.green },
		DiagnosticVirtualTextOk = { bg = palette.pine, fg = palette.green },
		-- underline indicators
		DiagnosticUnderlineError = { underdashed = true, sp = palette.red },
		DiagnosticUnderlineWarn = { underdashed = true, sp = palette.orange },
		DiagnosticUnderlineHint = { underdashed = true, sp = palette.blue },
		DiagnosticUnderlineInfo = { underdotted = true, sp = palette.cyan },
		DiagnosticUnderlineOk = { underdotted = true, sp = palette.green },
	}
	return groups
end

return M
