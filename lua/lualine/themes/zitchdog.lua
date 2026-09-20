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
	if current_colorscheme == "zitchdog-pine" then
		return palettes.pine
	else
		return palettes.grape -- matches config.lua's default variant
	end
end

---@param p ZitchdogPalette
---@return table
local function build(p)
	return {
		normal = {
			a = { fg = p.purple, bg = p.lightblack },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		},
		insert = {
			a = { fg = p.green, bg = p.pine },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		},
		visual = {
			a = { fg = p.yellow, bg = p.umber },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		},
		command = {
			a = { fg = p.coral, bg = p.maroon },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		},
		replace = {
			a = { fg = p.red, bg = p.maroon },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		},
		terminal = {
			a = { fg = p.green, bg = p.pine },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		},
		inactive = {
			a = { fg = p.graphite, bg = p.darkblack },
			b = { fg = p.graphite, bg = p.darkblack },
			c = { fg = p.graphite, bg = p.darkblack },
			x = { fg = p.graphite, bg = p.darkblack },
			y = { fg = p.graphite, bg = p.darkblack },
			z = { fg = p.graphite, bg = p.darkblack },
		},
	}
end

-- Resolve on every access instead of once at require-time. lualine loads
-- this module (or its zitchdog-grape/zitchdog-pine aliases, which just
-- `require` this same module) through `require`, so it's cached the first
-- time anything pulls it in — sometimes before zitchdog has even set a
-- colorscheme. A metatable makes every M.normal/M.insert/etc. lookup
-- rebuild from the current state instead of returning a value frozen at
-- that first, possibly-premature load.
return setmetatable(M, {
	__index = function(_, key)
		return build(get_palette())[key]
	end,
})
