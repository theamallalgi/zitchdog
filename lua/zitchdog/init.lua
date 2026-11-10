local config = require("zitchdog.config").options

local M = {}

---@param opts ZitchdogConfig?
function M.setup(opts)
	opts = opts or {}
	config = vim.tbl_deep_extend("force", config, opts)
end

---@param opts ZitchdogConfig?
function M.load(opts)
	if opts then
		M.setup(opts)
	end

	vim.o.termguicolors = true
	vim.o.background = "dark"

	local core = require("zitchdog.common.core")
	local palette = core.createPaletteByVariant(config.variant, config)

	core.createTheme(palette, config)

	-- `hi clear` inside createTheme can unset g:colors_name, so set it afterwards.
	-- lualine's `auto` theme and the ColorScheme autocmd below both read it.
	vim.g.colors_name = "zitchdog-" .. config.variant

	vim.api.nvim_exec_autocmds("ColorScheme", { pattern = vim.g.colors_name })
end

return M
