local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		vim.api.nvim_set_hl(0, "OilDir", { fg = palette.yellow, bg = palette.umber, bold = true }),
		vim.api.nvim_set_hl(0, "OilDirIcon", { fg = palette.yellow }),
		vim.api.nvim_set_hl(0, "OilDirHidden", { fg = palette.slate }),
		vim.api.nvim_set_hl(0, "OilHidden", { fg = palette.slate }),
		vim.api.nvim_set_hl(0, "OilEmpty", { fg = palette.gray }),
		vim.api.nvim_set_hl(0, "OilFile", { fg = palette.purple }),
		vim.api.nvim_set_hl(0, "OilFileHidden", { fg = palette.gray }),
		vim.api.nvim_set_hl(0, "OilSocket", { fg = palette.orange }),
		vim.api.nvim_set_hl(0, "OilSocketHidden", { fg = palette.gray }),
		vim.api.nvim_set_hl(0, "OilLink", { fg = palette.green }),
		vim.api.nvim_set_hl(0, "OilLinkHidden", { fg = palette.gray }),
		vim.api.nvim_set_hl(0, "OilLinkTarget", { fg = palette.green, bg = palette.pine }),
		vim.api.nvim_set_hl(0, "OilLinkTargetHidden", { fg = palette.green, bg = palette.pine }),
		vim.api.nvim_set_hl(0, "OilOrphanLink", { fg = palette.red, underline = true }),
		vim.api.nvim_set_hl(0, "OilOrphanLinkHidden", { fg = palette.gray }),
		vim.api.nvim_set_hl(0, "OilOrphanLinkTarget", { fg = palette.red, bg = palette.maroon, underline = true }),
		vim.api.nvim_set_hl(
			0,
			"OilOrphanLinkTargetHidden",
			{ fg = palette.red, bg = palette.maroon, underline = true }
		),
		vim.api.nvim_set_hl(0, "OilTrashSourcePath", { fg = palette.gray, italic = true }),
		vim.api.nvim_set_hl(0, "OilPreviewCursor", { nocombine = true, blend = 100 }),
		vim.api.nvim_set_hl(0, "OilCreate", { fg = palette.pine, bg = palette.green, bold = true }),
		vim.api.nvim_set_hl(0, "OilDelete", { fg = palette.maroon, bg = palette.red, bold = true }),
		vim.api.nvim_set_hl(0, "OilMove", { fg = palette.indigo, bg = palette.blue, bold = true }),
		vim.api.nvim_set_hl(0, "OilCopy", { fg = palette.indigo, bg = palette.blue, bold = true }),
		vim.api.nvim_set_hl(0, "OilChange", { fg = palette.clay, bg = palette.orange, bold = true }),
		vim.api.nvim_set_hl(0, "OilRestore", { link = "OilCreate" }),
		vim.api.nvim_set_hl(0, "OilPurge", { link = "OilDelete" }),
		vim.api.nvim_set_hl(0, "OilTrash", { link = "OilDelete" }),
	}
	return groups
end

return M
