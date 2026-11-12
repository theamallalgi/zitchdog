local M = {}

M.url = "https://github.com/nvim-lualine/lualine.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	---@type table<string, table<string, ZitchdogHighlight>>
	local theme = require("zitchdog.lualine").build(palette)
	local groups = {}

	for mode, sections in pairs(theme) do
		for section, hl in pairs(sections) do
			groups["lualine_" .. section .. "_" .. mode] = hl
		end
	end

	return groups
end

return M
