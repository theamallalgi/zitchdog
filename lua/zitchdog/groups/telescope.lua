local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type function
function M.get(palette)
	return {
		TelescopePromptBorder = { fg = palette.magenta },
		TelescopePromptNormal = { fg = palette.magenta, bg = palette.charcoal },
		TelescopePromptTitle = { fg = palette.magenta, bg = palette.mulberry, bold = true },
		TelescopePromptCounter = { fg = palette.graphite },
		TelescopePromptPrefix = { fg = palette.magenta },
		TelescopeResultsBorder = { fg = palette.magenta },
		TelescopeResultsNormal = { fg = palette.magenta, bg = palette.charcoal },
		TelescopeResultsTitle = { fg = palette.magenta, bg = palette.mulberry, bold = true },
		TelescopePreviewBorder = { fg = palette.magenta },
		TelescopePreviewNormal = { fg = palette.white, bg = palette.charcoal },
		TelescopePreviewTitle = { fg = palette.magenta, bg = palette.mulberry, bold = true },
		TelescopeMatching = { fg = palette.green, bg = palette.pine },
		TelescopeNormal = { bg = palette.magenta, fg = palette.red },
		TelescopePrompt = { fg = palette.cyan },
		TelescopeResults = { fg = palette.magenta },
		TelescopeSelection = { fg = palette.magenta, bg = palette.aubergine, bold = true },
		TelescopeSelectionCaret = { fg = palette.coral, bg = palette.aubergine },
	}
end

return M
