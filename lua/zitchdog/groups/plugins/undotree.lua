local M = {}

M.url = "https://github.com/mbbill/undotree"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		UndotreeDiffAdd = { fg = "NONE", bg = "#00210F" },
		UndotreeDiffChange = { fg = "NONE", bg = "#0D0F1F" },
		UndotreeDiffDelete = { fg = "NONE", bg = "#210500" },
	}
	return groups
end

return M
