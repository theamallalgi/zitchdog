local variant = vim.g.colors_name or "zitchdog-grape"

if variant == "zitchdog-dune" then
  return require("lualine.themes.zitchdog-dune")
elseif variant == "zitchdog-pine" then
  return require("lualine.themes.zitchdog-pine")
else
  return require("lualine.themes.zitchdog-grape")
end