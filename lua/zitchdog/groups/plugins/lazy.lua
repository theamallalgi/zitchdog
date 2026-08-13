local M = {}

M.url = "https://github.com/folke/lazy.nvim"

function M.create(palette, zitch_pattern, config)
	local groups = {
		LazyNormal = { bg = config.transparent_bg and "NONE" or palette.charcoal },
	}
	return groups
end

return M
