local zitch = {}

zitch.config = {
	transparent_bg = false, -- a boolean to toggle transparent background
	variant = "grape", -- the default colorscheme
	italic_comments = false, -- a boolean to toggle italic comments
	colors = {}, -- a table of colors to override the default palette
}

function zitch.setup(opts)
	opts = opts or {}
	zitch.config = vim.tbl_deep_extend("force", zitch.config, opts)

	vim.o.termguicolors = true
	vim.o.background = "dark"

	local core = require("zitchdog.common.core")
	local palette, variant_name = core.createPaletteByVariant(zitch.config.variant)

	-- Apply user-defined color overrides
	for color_name, color_value in pairs(zitch.config.colors) do
		if palette[color_name] then
			palette[color_name] = color_value
		end
	end

	vim.g.colors_name = variant_name

	core.createTheme(palette, zitch.config)
end

return zitch
