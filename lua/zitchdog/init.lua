local zitch = {}

zitch.config = require("zitchdog.config").options

function zitch.setup(opts)
	opts = opts or {}
	zitch.config = vim.tbl_deep_extend("force", zitch.config, opts)
end

function zitch.load(opts)
  if opts then
    zitch.setup(opts)
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"

  local core = require("zitchdog.common.core")
  local palette, variant_name = core.createPaletteByVariant(zitch.config.variant)
  vim.g.colors_name = "zitchdog-" .. zitch.config.variant

  core.createTheme(palette, zitch)
end

return zitch
