local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		lualine_a_normal = { fg = palette.blue, bg = palette.lightblack },
		lualine_b_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_b_fancy_branch_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_inactive = { fg = palette.graphite, bg = palette.magenta },
		lualine_b_inactive = { fg = palette.graphite, bg = palette.magenta },
		lualine_b_fancy_branch_inactive = { fg = palette.graphite, bg = palette.magenta },
		lualine_a_command = { fg = palette.orange, bg = palette.clay },
		lualine_z_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_insert = { fg = palette.green, bg = palette.pine },
		lualine_c_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_replace = { fg = palette.red, bg = palette.maroon },
		lualine_z_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_visual = { fg = palette.yellow, bg = palette.umber },
		lualine_z_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_fancy_branch_terminal = { fg = palette.green, bg = palette.pine },
		lualine_c_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_inactive = { fg = palette.graphite },
		lualine_c_terminal = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_fancy_branch_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_fancy_branch_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_fancy_branch_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_fancy_branch_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_fancy_branch_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_fancy_branch_inactive = { fg = palette.graphite },
		lualine_c_fancy_branch_terminal = { fg = palette.slate, bg = palette.darkblack },
	}
	return groups
end

return M
