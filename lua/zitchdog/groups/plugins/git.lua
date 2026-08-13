local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

function M.create(palette, zitch_pattern, config)
	local groups = {
		-- gitsigns.nvim: see https://github.com/lewis6991/gitsigns.nvim
		GitSignsAddLn = { fg = "NONE", bg = "#091511" },
		GitSignsChangeLn = { fg = "NONE", bg = "#121429" },
		GitSignsDeleteLn = { fg = "NONE", bg = "#240d12" },
		GitSignsAddInline = { fg = "NONE", bg = "#091511" },
		GitSignsChangeInline = { fg = "NONE", bg = "#121429" },
		GitSignsDeleteInline = { fg = "NONE", bg = "#240d12" },
	}
	return groups
end

return M
