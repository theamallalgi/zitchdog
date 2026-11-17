local M = {}

---@param p ZitchdogPalette
---@return table
function M.build(p)
	local theme = {
		normal = { fg = p.slate, bg = p.darkblack },
		ellipsis = { fg = p.graphite },
		separator = { fg = p.graphite },
		modified = { fg = p.yellow },
		dirname = { fg = p.slate },
		basename = { fg = p.purple, bold = true },
		context = { fg = p.slate },
	}

	-- stylua: ignore
	local kinds = {
		"file", "module", "namespace", "package", "class", "method", "property", "field", "constructor",
		"enum", "interface", "function", "variable", "constant", "string", "number", "boolean", "array",
		"object", "key", "null", "enum_member", "struct", "event", "operator", "type_parameter",
	}

	for _, kind in ipairs(kinds) do
		theme["context_" .. kind] = { fg = p.cyan }
	end

	return theme
end

---@param variant ZitchdogVariant?
---@return table
function M.get(variant)
	return M.build(require("zitchdog.colors").resolve(variant))
end

return M
