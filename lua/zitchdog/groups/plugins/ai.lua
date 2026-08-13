local M = {}

M.url = "https://github.com/github/copilot.vim"

function M.create(palette, zitch_pattern, config)
	local groups = {
		CopilotSuggestion = { bg = "NONE", fg = palette.mulberry },
		CopilotAnnotation = { bg = "NONE", fg = palette.slate, bold = true },
	}
	return groups
end

return M
