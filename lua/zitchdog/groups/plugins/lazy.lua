local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		LazyNormal = { bg = config.transparent_bg and "NONE" or palette.charcoal },
	}

	if config.clean_mode then
		---@type ZitchdogHighlights
		local clean = {
			LazyNormal = { fg = "#abb2bf", bg = palette.black },
			LazyBorder = { fg = "#140D19", bg = "#140D19" },
			LazyButton = { fg = "#abb2bf", bg = "#140D19" },
			LazyButtonActive = { fg = "#c0c9c3", bg = "#051177", bold = true },
			LazyH1 = { fg = "#c0c9c3", bg = "#051177", bold = true },
		}
		groups = vim.tbl_deep_extend("force", groups, clean)
	end

	return groups
end

return M
