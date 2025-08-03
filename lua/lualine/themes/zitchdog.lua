local M = {}

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

function M.get_theme()
  local colors = get_palette()

  return {
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
      b = { fg = colors.white, bg = colors.mauve },
      c = { fg = colors.white, bg = colors.ash },
    },
    inactive = {
      a = { fg = colors.white, bg = colors.ash, gui = "bold" },
      b = { fg = colors.white, bg = colors.ash },
      c = { fg = colors.white, bg = colors.ash },
    },
  }
end

return M
