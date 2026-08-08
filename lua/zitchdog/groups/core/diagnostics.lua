local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		-- paste groups here
		DiagnosticError = { bg = "NONE", fg = palette.red },
		DiagnosticFloatingError = { bg = "NONE", fg = palette.red },
		DiagnosticSignError = { bg = "NONE", fg = palette.red },
		DiagnosticUndelineError = { bg = "NONE", fg = palette.red },
		DiagnosticVirtualTextError = { bg = palette.maroon, fg = palette.red },

		DiagnosticInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticFloatingInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticSignInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticUndelineInfo = { bg = "NONE", fg = palette.cyan },
		DiagnosticVirtualTextInfo = { bg = palette.teal, fg = palette.cyan },

		DiagnosticOk = { bg = "NONE", fg = palette.green },
		DiagnosticFloatingOk = { bg = "NONE", fg = palette.green },
		DiagnosticSignOk = { bg = "NONE", fg = palette.green },
		DiagnosticUndelineOk = { bg = "NONE", fg = palette.green },
		DiagnosticVirtualTextOk = { bg = palette.pine, fg = palette.green },

		DiagnosticHint = { bg = "NONE", fg = palette.blue },
		DiagnosticFloatingHint = { bg = "NONE", fg = palette.blue },
		DiagnosticSignHint = { bg = "NONE", fg = palette.blue },
		DiagnosticUndelineHint = { bg = "NONE", fg = palette.blue },
		DiagnosticVirtualTextHint = { bg = palette.indigo, fg = palette.blue },

		DiagnosticWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticFloatingWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticSignWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticUndelineWarn = { bg = "NONE", fg = palette.orange },
		DiagnosticVirtualTextWarn = { bg = palette.clay, fg = palette.orange },
	}
	return groups
end

return M
