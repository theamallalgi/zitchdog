local M = {}

local function get_palette(variant)
  local palettes = require("zitchdog.common.palette").variants
  if not variant then
    -- If no variant is passed, get it from the zitchdog config
    local config = require("zitchdog.config")
    variant = config.options.variant
  end
  return palettes[variant] or palettes.grape
end

function M.get(variant)
  local colors = get_palette(variant)
  local zitchdog = {
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
  return zitchdog
end

return M