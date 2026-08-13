-- lua/zitchdog/groups/init.lua

local M = {}

---@param dir string
---@param prefix string
---@param palette ZitchdogPalette
---@param zitch_pattern ZitchdogHighlights
---@param config ZitchdogConfig
---@param groups ZitchdogHighlights
local function collect(dir, prefix, palette, zitch_pattern, config, groups)
	for name, kind in vim.fs.dir(dir) do
		if kind == "directory" then
			collect(dir .. "/" .. name, prefix .. name .. ".", palette, zitch_pattern, config, groups)
		elseif kind == "file" and name:sub(-4) == ".lua" and name ~= "init.lua" then
			local mod_name = prefix .. name:sub(1, -5)
			local mod = require("zitchdog.groups." .. mod_name)

			for group, highlight in pairs(mod.create(palette, zitch_pattern, config)) do
				groups[group] = highlight
			end
		end
	end
end

---@param palette ZitchdogPalette
---@param config ZitchdogConfig
---@return ZitchdogHighlights
function M.setup(palette, config)
	local groups = {}
	local zitch_pattern = require("zitchdog.common.core").createZitchPattern(palette)

	local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h")
	collect(root, "", palette, zitch_pattern, config, groups)

	return groups
end

return M
