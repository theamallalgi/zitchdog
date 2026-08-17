local M = {}

M.url = "https://github.com/nvim-lualine/lualine.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- normal
		lualine_a_normal = { fg = palette.purple, bg = palette.lightblack },
		lualine_b_normal = { fg = palette.cyan, bg = palette.teal },
		lualine_c_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_normal = { fg = palette.slate, bg = palette.darkblack },
		-- insert
		lualine_a_insert = { fg = palette.green, bg = palette.pine },
		lualine_b_insert = { fg = palette.cyan, bg = palette.teal },
		lualine_c_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_insert = { fg = palette.slate, bg = palette.darkblack },
		-- visual
		lualine_a_visual = { fg = palette.yellow, bg = palette.umber },
		lualine_b_visual = { fg = palette.cyan, bg = palette.teal },
		lualine_c_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_visual = { fg = palette.slate, bg = palette.darkblack },
		-- command
		lualine_a_command = { fg = palette.coral, bg = palette.maroon },
		lualine_b_command = { fg = palette.cyan, bg = palette.teal },
		lualine_c_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_command = { fg = palette.slate, bg = palette.darkblack },
		-- replace
		lualine_a_replace = { fg = palette.red, bg = palette.maroon },
		lualine_b_replace = { fg = palette.cyan, bg = palette.teal },
		lualine_c_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_replace = { fg = palette.slate, bg = palette.darkblack },
		-- terminal
		lualine_a_terminal = { fg = palette.green, bg = palette.pine },
		lualine_b_terminal = { fg = palette.cyan, bg = palette.teal },
		lualine_c_terminal = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_terminal = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_terminal = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_terminal = { fg = palette.slate, bg = palette.darkblack },
		-- inactive
		lualine_a_inactive = { fg = palette.graphite, bg = palette.darkblack },
		lualine_b_inactive = { fg = palette.graphite, bg = palette.darkblack },
		lualine_c_inactive = { fg = palette.graphite, bg = palette.darkblack },
		lualine_x_inactive = { fg = palette.graphite, bg = palette.darkblack },
		lualine_y_inactive = { fg = palette.graphite, bg = palette.darkblack },
		lualine_z_inactive = { fg = palette.graphite, bg = palette.darkblack },
	}
	return groups
end

return M
