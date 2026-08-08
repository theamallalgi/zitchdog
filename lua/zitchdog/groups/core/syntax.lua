local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		-- paste groups here
		Comment = { fg = palette.gray, gui = config.italic_comments and "italic" or "NONE" },
		Constant = zitch_pattern.Purple,
		String = zitch_pattern.Green,
		Character = zitch_pattern.GreenBold,
		Number = zitch_pattern.Green,
		Boolean = zitch_pattern.Green,
		["@variable"] = zitch_pattern.Foreground,

		Identifier = zitch_pattern.Purple,
		Function = zitch_pattern.Orange,

		Statement = zitch_pattern.Purple,
		Conditional = zitch_pattern.Purple,
		Repeat = zitch_pattern.Purple,
		Label = zitch_pattern.Purple,
		Exception = zitch_pattern.Purple,
		Operator = zitch_pattern.Purple,
		Keyword = zitch_pattern.Purple,

		Include = zitch_pattern.Purple,
		Define = zitch_pattern.Purple,
		Macro = zitch_pattern.Purple,
		PreProc = zitch_pattern.Foreground,
		PreCondit = zitch_pattern.Purple,

		Type = zitch_pattern.Blue,
		StorageClass = zitch_pattern.Purple,
		Structure = zitch_pattern.Purple,
		Typedef = zitch_pattern.Purple,

		Special = zitch_pattern.Purple,
		SpecialChar = zitch_pattern.Purple,
		Tag = zitch_pattern.Foreground,
		SpecialComment = zitch_pattern.Gray,
		Debug = zitch_pattern.RedBold,
		Delimiter = zitch_pattern.PinkBold,

		Ignore = {},
		Bold = { gui = "bold" },
		Underlined = { gui = "underline" },
		Italic = { gui = "italic" },
		Error = { fg = palette.red, gui = "bold,underline" },
		Todo = { fg = palette.green, gui = "bold,italic" },
	}
	return groups
end

return M
