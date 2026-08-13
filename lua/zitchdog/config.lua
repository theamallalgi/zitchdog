local M = {}

---@alias ZitchdogVariant
---| "grape"
---| "pine"
---| "dune"

---@class ZitchdogConfig
---@field transparent_bg boolean
---@field variant ZitchdogVariant
---@field variant "grape"|"pine" the default colorscheme variant
---@field italic_comments boolean
---@field fg string?
---@field bg string?
---@field colors table<string, string>

---@type ZitchdogConfig
M.options = {
	transparent_bg = false, -- boolean, toggles a transparent background
	disable_cursorline = false, -- boolean, hides CursorLine highlight by matching it to bg
	variant = "grape", -- the default colorscheme variant
	italic_comments = false, -- boolean, toggles italic comments
	fg = nil, -- override the base foreground (defaults to the variant's white)
	bg = nil, -- override the base background (defaults to the variant's black; ignored when transparent_bg = true)
	colors = {}, -- override any specific palette color, e.g. { red = "#ff0000", purple = "#a277ff" }
}

return M
