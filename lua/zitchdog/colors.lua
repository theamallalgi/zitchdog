local M = {}

---@class ZitchdogColorsOpts
---@field variant ZitchdogVariant?

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

	if state_palette and state_config and state_config.variant == variant then
		return state_palette
	end

	local config = state_config or require("zitchdog.config").options
	return (require("zitchdog.common.core").createPaletteByVariant(variant, config))
end

---@param opts ZitchdogColorsOpts?
---@return ZitchdogPalette
function M.setup(opts)
	return vim.tbl_extend("force", {}, M.resolve(opts and opts.variant))
end

M.get = M.setup

return M
