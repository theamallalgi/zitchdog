local M = {}

function M.create(palette, zitch_pattern, config)
	local groups = {
		RenderMarkdownCode = { bg = palette.darkblack },
		RenderMarkdownCodeInline = { bg = palette.darkblack },
		RenderMarkdownBullet = { fg = palette.orange },
		RenderMarkdownDash = { fg = palette.orange },
		RenderMarkdownTableHead = { fg = palette.red },
		RenderMarkdownTableRow = { fg = palette.orange },
	}
	return groups
end

return M
