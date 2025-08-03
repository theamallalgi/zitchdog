local M = {}

local function get_palette(variant)
  local palettes = require("zitchdog.common.palette").variants
  variant = variant and "zitchdog-" .. variant or vim.g.colors_name or "zitchdog-grape"

  if variant == "zitchdog-dune" then
    return palettes.dune
  elseif variant == "zitchdog-pine" then
    return palettes.pine
  else
    return palettes.grape
  end
end

function M.get()
  local colors = get_palette()
  local zitchdog = {
    normal = {
      a = { fg = colors.black, bg = colors.purple, gui = "bold" },
      b = { fg = colors.white, bg = colors.mauve },
      c = { fg = colors.white, bg = colors.ash },
    },
    insert = {
      a = { fg = colors.black, bg = colors.green, gui = "bold" },
    },
    visual = {
      a = { fg = colors.black, bg = colors.orange, gui = "bold" },
    },
    replace = {
      a = { fg = colors.black, bg = colors.coral, gui = "bold" },
    },
    command = {
      a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
    },
    inactive = {
      a = { fg = colors.white, bg = colors.ash, gui = "bold" },
      b = { fg = colors.white, bg = colors.ash },
      c = { fg = colors.white, bg = colors.ash },
    },
  }
  return zitchdog
end

return M
