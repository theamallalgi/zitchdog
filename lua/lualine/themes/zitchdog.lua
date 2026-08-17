local M = {}

local palettes = require("zitchdog.common.palette").variants

---@return ZitchdogPalette
local function get_palette()
	-- Prefer the palette zitchdog actually applied — this already has
	-- any fg/bg/colors overrides from setup() baked in.
	local state = require("zitchdog.state")
	local resolved = state.get()
	if resolved then
		return resolved
	end

	-- Fallback if this loads before zitchdog has set a colorscheme.
	local current_colorscheme = vim.g.colors_name
	if current_colorscheme == "zitchdog-dune" then
		return palettes.dune
	elseif current_colorscheme == "zitchdog-pine" then
		return palettes.pine
	else
		return palettes.grape -- matches config.lua's default variant
	end
end

local p = get_palette()

M.normal = {
	a = { fg = p.purple, bg = p.lightblack },
	b = { fg = p.cyan, bg = p.teal },
	c = { fg = p.slate, bg = p.darkblack },
	x = { fg = p.slate, bg = p.darkblack },
	y = { fg = p.slate, bg = p.darkblack },
	z = { fg = p.slate, bg = p.darkblack },
}

M.insert = {
	a = { fg = p.green, bg = p.pine },
	b = { fg = p.cyan, bg = p.teal },
	c = { fg = p.slate, bg = p.darkblack },
	x = { fg = p.slate, bg = p.darkblack },
	y = { fg = p.slate, bg = p.darkblack },
	z = { fg = p.slate, bg = p.darkblack },
}

M.visual = {
	a = { fg = p.yellow, bg = p.umber },
	b = { fg = p.cyan, bg = p.teal },
	c = { fg = p.slate, bg = p.darkblack },
	x = { fg = p.slate, bg = p.darkblack },
	y = { fg = p.slate, bg = p.darkblack },
	z = { fg = p.slate, bg = p.darkblack },
}

M.command = {
	a = { fg = p.coral, bg = p.maroon },
	b = { fg = p.cyan, bg = p.teal },
	c = { fg = p.slate, bg = p.darkblack },
	x = { fg = p.slate, bg = p.darkblack },
	y = { fg = p.slate, bg = p.darkblack },
	z = { fg = p.slate, bg = p.darkblack },
}

M.replace = {
	a = { fg = p.red, bg = p.maroon },
	b = { fg = p.cyan, bg = p.teal },
	c = { fg = p.slate, bg = p.darkblack },
	x = { fg = p.slate, bg = p.darkblack },
	y = { fg = p.slate, bg = p.darkblack },
	z = { fg = p.slate, bg = p.darkblack },
}

M.terminal = {
	a = { fg = p.green, bg = p.pine },
	b = { fg = p.cyan, bg = p.teal },
	c = { fg = p.slate, bg = p.darkblack },
	x = { fg = p.slate, bg = p.darkblack },
	y = { fg = p.slate, bg = p.darkblack },
	z = { fg = p.slate, bg = p.darkblack },
}

M.inactive = {
	a = { fg = p.graphite, bg = p.darkblack },
	b = { fg = p.graphite, bg = p.darkblack },
	c = { fg = p.graphite, bg = p.darkblack },
	x = { fg = p.graphite, bg = p.darkblack },
	y = { fg = p.graphite, bg = p.darkblack },
	z = { fg = p.graphite, bg = p.darkblack },
}

return M
