local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		TodoBgFIX = { fg = palette.maroon, bg = palette.red, bold = true },
		TodoBgTODO = { fg = palette.pine, bg = palette.green, bold = true },
		TodoBgHACK = { fg = palette.clay, bg = palette.orange, bold = true },
		TodoBgWARN = { fg = palette.clay, bg = palette.orange, bold = true },
		TodoBgPERF = { fg = palette.amethyst, bg = palette.purple, bold = true },
		TodoBgNOTE = { fg = palette.teal, bg = palette.cyan, bold = true },
		TodoBgTEST = { fg = palette.indigo, bg = palette.blue, bold = true },

		TodoFgFIX = { fg = palette.red },
		TodoFgTODO = { fg = palette.green },
		TodoFgHACK = { fg = palette.orange },
		TodoFgWARN = { fg = palette.orange },
		TodoFgPERF = { fg = palette.purple },
		TodoFgNOTE = { fg = palette.cyan },
		TodoFgTEST = { fg = palette.blue },

		TodoSignFIX = { fg = palette.red },
		TodoSignTODO = { fg = palette.green },
		TodoSignHACK = { fg = palette.orange },
		TodoSignWARN = { fg = palette.orange },
		TodoSignPERF = { fg = palette.purple },
		TodoSignNOTE = { fg = palette.cyan },
		TodoSignTEST = { fg = palette.blue },
	}
	return groups
end

return M
