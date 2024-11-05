local zitch = {}
local core = require("zitchdog.common.core")

function zitch.setupTheme(pattern)
	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = pattern

	local palette = core.createPaletteByPattern(pattern)

	core.createTheme(palette)
end

return zitch
