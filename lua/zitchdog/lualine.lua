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
---@return table
function M.get(variant)
	return M.build(require("zitchdog.colors").resolve(variant))
end

return M
