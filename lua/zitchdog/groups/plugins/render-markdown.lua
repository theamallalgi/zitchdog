local M = {}

M.url = "https://github.com/meanderingprogrammer/render-markdown.nvim"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local groups = {
		-- plugin
		RenderMarkdownH1 = { fg = palette.purple, bold = true },
		RenderMarkdownH2 = { fg = palette.blue, bold = true },
		RenderMarkdownH3 = { fg = palette.yellow, bold = true },
		RenderMarkdownH4 = { fg = palette.red, bold = true },
		RenderMarkdownH5 = { fg = palette.green, bold = true },
		RenderMarkdownH6 = { fg = palette.cyan, bold = true },
		RenderMarkdownH1Bg = { bg = palette.amethyst },
		RenderMarkdownH2Bg = { bg = palette.indigo },
		RenderMarkdownH3Bg = { bg = palette.umber },
		RenderMarkdownH4Bg = { bg = palette.maroon },
		RenderMarkdownH5Bg = { bg = palette.pine },
		RenderMarkdownH6Bg = { bg = palette.teal },
		RenderMarkdownCode = { bg = palette.aubergine },
		RenderMarkdownCodeInline = { fg = palette.orange, bg = palette.umber },
		RenderMarkdownBullet = { fg = palette.purple },
		RenderMarkdownQuote = { fg = palette.graphite },
		RenderMarkdownDash = { fg = palette.ash },
		RenderMarkdownLink = { fg = palette.blue },
		RenderMarkdownWikiLink = { fg = palette.blue },
		RenderMarkdownTableHead = { fg = palette.gray },
		RenderMarkdownTableRow = { fg = palette.gray },
		RenderMarkdownTableFill = { fg = palette.white },
		RenderMarkdownSuccess = { fg = palette.green, bold = true },
		RenderMarkdownInfo = { fg = palette.blue, bold = true },
		RenderMarkdownHint = { fg = palette.magenta, bold = true },
		RenderMarkdownWarn = { fg = palette.yellow, bold = true },
		RenderMarkdownError = { fg = palette.red, bold = true },
		RenderMarkdownMath = { fg = palette.cyan },
		RenderMarkdownUnchecked = { fg = palette.teal },
		RenderMarkdownChecked = { fg = palette.cyan },
		RenderMarkdownTodo = { fg = palette.orange },
		-- syntax
		["@spell.markdown"] = { fg = "#c0c9c3" },
	}
	return groups
end

return M
