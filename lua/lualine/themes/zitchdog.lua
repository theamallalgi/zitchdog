local theme = {}

local function get_palette()
  local current_colorscheme = vim.g.colors_name
  local palettes = require("zitchdog.common.palette").variants

  if current_colorscheme == "zitchdog-dune" then
    return palettes.dune
  elseif current_colorscheme == "zitchdog-pine" then
    return palettes.pine
  else
    return palettes.grape -- Default to grape
  end
end

local colors = get_palette()

theme.normal = {
  a = { fg = colors.black, bg = colors.purple, gui = "bold" },
  b = { fg = colors.white, bg = colors.mauve },
  c = { fg = colors.white, bg = colors.ash },
}
theme.insert = {
  a = { fg = colors.black, bg = colors.green, gui = "bold" },
  b = { fg = colors.white, bg = colors.mauve },
  c = { fg = colors.white, bg = colors.ash },
}
theme.visual = {
  a = { fg = colors.black, bg = colors.orange, gui = "bold" },
  b = { fg = colors.white, bg = colors.mauve },
  c = { fg = colors.white, bg = colors.ash },
}
theme.replace = {
  a = { fg = colors.black, bg = colors.coral, gui = "bold" },
  b = { fg = colors.white, bg = colors.mauve },
  c = { fg = colors.white, bg = colors.ash },
}
theme.command = {
  a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
  b = { fg = colors.white, bg = colors.mauve },
  c = { fg = colors.white, bg = colors.ash },
}
theme.inactive = {
  a = { fg = colors.white, bg = colors.ash, gui = "bold" },
  b = { fg = colors.white, bg = colors.ash },
  c = { fg = colors.white, bg = colors.ash },
}

return theme
