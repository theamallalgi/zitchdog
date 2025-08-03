local M = {}

local palettes = require("zitchdog.common.palette").variants

local function get_palette()
  local current_colorscheme = vim.g.colors_name
  if current_colorscheme == "zitchdog-dune" then
    return palettes.dune
  elseif current_colorscheme == "zitchdog-pine" then
    return palettes.pine
  elseif current_colorscheme == "zitchdog-grape" then
    return palettes.grape
  else
    return palettes.grape -- Default to grape
  end
end

local colors = get_palette()

M = {
	normal = {
		a = { fg = colors.black, bg = colors.purple, gui = "bold" },
		b = { fg = colors.white, bg = colors.mauve },
		c = { fg = colors.white, bg = colors.ash },
	},
	insert = {
		a = { fg = colors.black, bg = colors.green, gui = "bold" },
		b = { fg = colors.white, bg = colors.mauve },
		c = { fg = colors.white, bg = colors.ash },
	},
	visual = {
		a = { fg = colors.black, bg = colors.orange, gui = "bold" },
		b = { fg = colors.white, bg = colors.mauve },
		c = { fg = colors.white, bg = colors.ash },
	},
	replace = {
		a = { fg = colors.black, bg = colors.coral, gui = "bold" },
		b = { fg = colors.white, bg = colors.mauve },
		c = { fg = colors.white, bg = colors.ash },
	},
	command = {
		a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
		b = { fg = colors.white, bg = a.mauve },
		c = { fg = colors.white, bg = colors.ash },
	},
	inactive = {
		a = { fg = colors.white, bg = colors.ash, gui = "bold" },
		b = { fg = colors.white, bg = colors.ash },
		c = { fg = colors.white, bg = colors.ash },
	},
}

return M