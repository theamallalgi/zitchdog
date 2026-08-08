-- scripts/dump_groups.lua

return function(variant, outpath)
	local config = require("zitchdog.config").options
	local core = require("zitchdog.common.core")
	local palette = core.createPaletteByVariant(variant, config)
	local groups = require("zitchdog.groups").setup(palette, config)

	local names = {}
	for name in pairs(groups) do
		table.insert(names, name)
	end
	table.sort(names)

	local lines = {}
	for _, name in ipairs(names) do
		local hl = groups[name]
		local keys = {}
		for k in pairs(hl) do
			table.insert(keys, k)
		end
		table.sort(keys)

		local parts = {}
		for _, k in ipairs(keys) do
			table.insert(parts, string.format("%s=%s", k, tostring(hl[k])))
		end

		table.insert(lines, string.format("%s { %s }", name, table.concat(parts, ", ")))
	end

	local f = io.open(outpath, "w")
	f:write(table.concat(lines, "\n"))
	f:write("\n")
	f:close()
end
