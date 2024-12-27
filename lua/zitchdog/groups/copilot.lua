local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type function
function M.get(palette)
	return {
		CopilotSuggestion = { fg = palette.green, bg = "NONE" },
		CopilotAccept = { fg = palette.blue, bg = "NONE" },
		CopilotReject = { fg = palette.red, bg = "NONE" },
	}
end

return M
