local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		OilDir = { fg = palette.yellow, bg = palette.umber, bold = true },
		OilDirIcon = { fg = palette.yellow },
		OilDirHidden = { fg = palette.slate },
		OilHidden = { fg = palette.slate },
		OilEmpty = { fg = palette.gray },
		OilFile = { fg = palette.purple },
		OilFileHidden = { fg = palette.gray },
		OilSocket = { fg = palette.orange },
		OilSocketHidden = { fg = palette.gray },
		OilLink = { fg = palette.green },
		OilLinkHidden = { fg = palette.gray },
		OilLinkTarget = { fg = palette.green, bg = palette.pine },
		OilLinkTargetHidden = { fg = palette.green, bg = palette.pine },
		OilOrphanLink = { fg = palette.red, underline = true },
		OilOrphanLinkHidden = { fg = palette.gray },
		OilOrphanLinkTarget = { fg = palette.red, bg = palette.maroon, underline = true },
		OilOrphanLinkTargetHidden = { fg = palette.red, bg = palette.maroon, underline = true },
		OilTrashSourcePath = { fg = palette.gray, italic = true },
		OilPreviewCursor = { nocombine = true, blend = 100 },
		OilCreate = { fg = palette.pine, bg = palette.green, bold = true },
		OilDelete = { fg = palette.maroon, bg = palette.red, bold = true },
		OilMove = { fg = palette.indigo, bg = palette.blue, bold = true },
		OilCopy = { fg = palette.indigo, bg = palette.blue, bold = true },
		OilChange = { fg = palette.clay, bg = palette.orange, bold = true },
		OilRestore = { link = "OilCreate" },
		OilPurge = { link = "OilDelete" },
		OilTrash = { link = "OilDelete" },
	}
	return groups
end

return M
