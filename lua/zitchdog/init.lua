local config = require("zitchdog.config").options

local M = {}

function M.setup(opts)
	opts = opts or {}
	config = vim.tbl_deep_extend("force", config, opts)
end

function M.load(opts)
	if opts then
		M.setup(opts)
	end

	vim.o.termguicolors = true
	vim.o.background = "dark"

	local core = require("zitchdog.common.core")
	local palette, variant_name = core.createPaletteByVariant(config.variant)
	vim.g.colors_name = "zitchdog-" .. config.variant

	core.createTheme(palette, config)
  require("zitchdog.lualine")
end

return M
