local theme = {}

local function get_palette()
  local palettes = require("zitchdog.common.palette").variants
  local variant = vim.g.colors_name or "zitchdog-grape"

  if variant == "zitchdog-dune" then
    return palettes.dune
  elseif variant == "zitchdog-pine" then
    return palettes.pine
  else
    return palettes.grape
  end
end

setmetatable(theme, {
  __index = function(_, key)
    local colors = get_palette()
    local dynamic_theme = {
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
    return dynamic_theme[key]
  end,
})

return theme
