local M = {}

M.url = "https://github.com/nvim-lualine/lualine.nvim"

---@type function
function M.get(palette)
	return {
		lualine_a_normal = { fg = palette.blue, bg = palette.lightblack },
		lualine_b_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_b_fancy_branch_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_c_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_x_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_y_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_z_normal = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_inactive = { fg = palette.graphite, bg = palette.magenta },
		lualine_b_inactive = { fg = palette.graphite, bg = palette.magenta },
		lualine_b_fancy_branch_inactive = { fg = palette.graphite, bg = palette.magenta },
		lualine_c_inactive = { fg = palette.graphite },
		lualine_a_command = { fg = palette.orange, bg = "#4b2424" },
		lualine_z_command = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_insert = { fg = palette.green, bg = "#123127" },
		lualine_z_insert = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_replace = { fg = palette.red, bg = "#652929" },
		lualine_z_replace = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_visual = { fg = palette.yellow, bg = "#4b3b27" },
		lualine_z_visual = { fg = palette.slate, bg = palette.darkblack },
		lualine_a_fancy_branch_terminal = { fg = palette.green, bg = "#123127" },
	}
end

return M
