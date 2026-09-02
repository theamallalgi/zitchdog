local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- native git buffer stuff (try: git commit --verbose)
		diffAdded = { fg = palette.green, bg = palette.pine },
		diffRemoved = { fg = palette.red, bg = palette.maroon },
		diffChanged = { fg = palette.blue, bg = palette.indigo },
		diffFile = { fg = "#c0c9c3", bg = "#051177", bold = false },
		diffIndexLine = { fg = palette.pink },
		diffOldFile = { fg = palette.orange },
		diffNewFile = { fg = palette.green },
		diffLine = { fg = palette.purple },
		gitcommitDiff = { fg = palette.slate },

		-- gitsigns.nvim: see https://github.com/lewis6991/gitsigns.nvim
		GitSignsAddLn = { fg = "NONE", bg = "#091511" },
		GitSignsChangeLn = { fg = "NONE", bg = "#121429" },
		GitSignsDeleteLn = { fg = "NONE", bg = "#240d12" },
		GitSignsAddInline = { fg = "NONE", bg = "#091511" },
		GitSignsChangeInline = { fg = "NONE", bg = "#121429" },
		GitSignsDeleteInline = { fg = "NONE", bg = "#240d12" },
	}
	return groups
end

return M
