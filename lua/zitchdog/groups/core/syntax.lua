local M = {}

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
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
		["@variable.member"] = { fg = palette.blue },
		["@boolean"] = { fg = palette.yellow, bold = true },

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

		-- markup languages
		-- headings
		["@markup.heading.1.markdown"] = { fg = palette.purple, bold = true },
		["@markup.heading.2.markdown"] = { fg = palette.blue, bold = true },
		["@markup.heading.3.markdown"] = { fg = palette.yellow, bold = true },
		["@markup.heading.4.markdown"] = { fg = palette.red, bold = true },
		["@markup.heading.5.markdown"] = { fg = palette.green, bold = true },
		["@markup.heading.6.markdown"] = { fg = palette.cyan, bold = true },
		-- text emphasis
		["@markup.strong"] = { fg = palette.white, bold = true },
		["@markup.italic"] = { fg = palette.white, italic = true },
		["@markup.strikethrough"] = { fg = palette.white, strikethrough = true },
		["@markup.underline"] = { fg = palette.white, underline = true },
		-- code
		["@markup.raw"] = { fg = palette.orange },
		["@markup.raw.block"] = { bg = palette.aubergine },
		["@markup.raw.delimiter"] = { fg = palette.orange },
		["@markup.raw.markdown_inline"] = { fg = palette.orange, bg = palette.umber },
		["@label.markdown"] = { fg = palette.blue, bg = palette.indigo },
		-- links
		["@markup.link"] = { fg = palette.blue },
		["@markup.link.label"] = { fg = palette.cyan, bold = true },
		["@markup.link.url"] = { fg = palette.blue, underline = true },
		-- lists and quotes
		["@markup.list"] = { fg = palette.purple },
		["@markup.list.checked"] = { fg = palette.green, bold = true },
		["@markup.list.unchecked"] = { fg = palette.green },
		["@markup.quote"] = { fg = palette.gray },
		-- misc
		["@punctuation.special.markdown"] = { fg = palette.gray },
	}
	return groups
end

return M
