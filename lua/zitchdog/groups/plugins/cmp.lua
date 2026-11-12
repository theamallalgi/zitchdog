local M = {}

M.url = "https://github.com/saghen/blink.cmp"

---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.create(palette, zitch_pattern, config)
	local bg = config.transparent_bg and "NONE" or palette.black
	local groups = {
		cmpnormal = { bg = bg, fg = palette.magenta },
		CmpBorder = { bg = bg, fg = palette.magenta },
		CmpCursorLine = {
			bg = config.transparent_bg and "NONE" or palette.lightblack,
			fg = palette.magenta,
			bold = true,
		},
		CmpItemKindText = { bg = "NONE", fg = palette.magenta },
		CmpItemKind = { bg = "NONE", fg = palette.magenta },
		CmpItemAbbr = { bg = "NONE", fg = palette.magenta },
		CmpItemAbbrMatch = { bg = "NONE", fg = palette.green, bold = true },
		CmpItemAbbrMatchFuzzy = { bg = "NONE", fg = palette.orange },

		-- blink.cmp
		BlinkCmpMenu = { fg = palette.magenta, bg = bg },
		BlinkCmpMenuBorder = { bg = bg, fg = palette.slate },
		BlinkCmpMenuSelection = { bg = palette.amethyst, gui = "bold" },
		BlinkCmpScrollBarThumb = { bg = palette.slate },
		BlinkCmpScrollBarGutter = { bg = bg },
		BlinkCmpLabel = { bg = "NONE", fg = palette.magenta },
		BlinkCmpLabelDeprecated = { bg = "NONE", fg = palette.magenta, strikethrough = true },
		BlinkCmpLabelMatch = { bg = "NONE", fg = palette.green, bold = true },
		BlinkCmpLabelDetail = { bg = "NONE", fg = palette.magenta },
		BlinkCmpLabelDescription = { bg = "NONE", fg = palette.magenta },
		BlinkCmpKind = { bg = "NONE", fg = palette.magenta },
		BlinkCmpKindFunction = { bg = "NONE", fg = palette.cyan },
		BlinkCmpKindMethod = { bg = "NONE", fg = palette.cyan },
		BlinkCmpKindVariable = { bg = "NONE", fg = palette.yellow },
		BlinkCmpKindClass = { bg = "NONE", fg = palette.magenta },
		BlinkCmpKindModule = { bg = "NONE", fg = palette.blue },
		BlinkCmpKindKeyword = { bg = "NONE", fg = palette.orange },
		BlinkCmpKindField = { bg = "NONE", fg = palette.orange },
		BlinkCmpKindProperty = { bg = "NONE", fg = palette.yellow },
		BlinkCmpKindInterface = { bg = "NONE", fg = palette.magenta },
		BlinkCmpSource = { bg = "NONE", fg = palette.lilac },
		-- BlinkCmpGhostText = {}, -- Ghost text preview
		BlinkCmpDoc = { fg = palette.white, bg = bg },
		BlinkCmpDocBorder = { bg = bg, fg = palette.slate },
		BlinkCmpDocSeparator = { bg = "NONE", fg = palette.gray },
		-- BlinkCmpDocCursorLine = {},
		BlinkCmpSignatureHelp = { fg = palette.white, bg = bg },
		BlinkCmpSignatureHelpBorder = { bg = bg, fg = palette.magenta },
		-- BlinkCmpSignatureHelpActiveParameter = {},
	}

	if config.clean_mode then
		---@type ZitchdogHighlights
		local clean = {
			BlinkCmpMenu = { bg = palette.ash },
			BlinkCmpMenuBorder = { fg = palette.ash, bg = palette.ash },
			BlinkCmpMenuSelection = { bg = palette.amethyst },
			BlinkCmpDoc = { bg = palette.ash },
			BlinkCmpDocBorder = { fg = palette.ash, bg = palette.ash },
		}
		groups = vim.tbl_deep_extend("force", groups, clean)
	end

	return groups
end

return M
