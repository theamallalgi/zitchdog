local M = {}

---@param p ZitchdogPalette
---@return table
function M.build(p)
	local function section(a_fg, a_bg)
		return {
			a = { fg = a_fg, bg = a_bg },
			b = { fg = p.cyan, bg = p.teal },
			c = { fg = p.slate, bg = p.darkblack },
			x = { fg = p.slate, bg = p.darkblack },
			y = { fg = p.slate, bg = p.darkblack },
			z = { fg = p.slate, bg = p.darkblack },
		}
	end

	return {
		normal = section(p.purple, p.lightblack),
		insert = section(p.green, p.pine),
		visual = section(p.yellow, p.umber),
		command = section(p.coral, p.maroon),
		replace = section(p.red, p.maroon),
		terminal = section(p.green, p.pine),
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

---@param variant ZitchdogVariant?
---@return ZitchdogPalette
function M.resolve(variant)
	local variants = require("zitchdog.common.palette").variants
	local state_palette, state_config = require("zitchdog.state").get()

	if not variant then
		local name = vim.g.colors_name
		local from_name = type(name) == "string" and name:match("^zitchdog%-(%a+)$") or nil
		if from_name and variants[from_name] then
			variant = from_name
		else
			variant = (state_config and state_config.variant) or require("zitchdog.config").options.variant
		end
	end

	-- Reuse the palette zitchdog applied when it matches, so fg/bg/colors overrides stay intact.
	if state_palette and state_config and state_config.variant == variant then
		return state_palette
	end

	local config = state_config or require("zitchdog.config").options
	return (require("zitchdog.common.core").createPaletteByVariant(variant, config))
end

---@param variant ZitchdogVariant?
---@return table
function M.get(variant)
	return M.build(M.resolve(variant))
end

return M
