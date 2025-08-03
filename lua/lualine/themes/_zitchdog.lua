local M = {}

local function get_palette(variant)
  local palettes = require("zitchdog.common.palette").variants
  return palettes[variant]
end

function M.get(variant)
  local colors = get_palette(variant)
  local zitchdog = {
    normal = {
      a = { fg = colors.black, bg = colors.purple, gui = "bold" },
      b = { fg = colors.purple, bg = colors.mauve },
      c = { fg = colors.purple, bg = colors.darkblack },
    },
    insert = {
      a = { fg = colors.black, bg = colors.green, gui = "bold" },
      b = { fg = colors.purple, bg = colors.mauve },
      c = { fg = colors.purple, bg = colors.darkblack },
    },
    visual = {
      a = { fg = colors.black, bg = colors.orange, gui = "bold" },
      b = { fg = colors.purple, bg = colors.mauve },
      c = { fg = colors.purple, bg = colors.darkblack },
    },
    replace = {
      a = { fg = colors.black, bg = colors.coral, gui = "bold" },
      b = { fg = colors.purple, bg = colors.mauve },
      c = { fg = colors.purple, bg = colors.darkblack },
    },
    command = {
      a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
      b = { fg = colors.purple, bg = colors.mauve },
      c = { fg = colors.purple, bg = colors.darkblack },
    },
    inactive = {
      a = { fg = colors.purple, bg = colors.darkblack, gui = "bold" },
      b = { fg = colors.purple, bg = colors.darkblack },
      c = { fg = colors.purple, bg = colors.darkblack },
    },
  }
  return zitchdog
end

return M
