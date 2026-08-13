local M = {}

---@class ZitchdogState
---@field palette ZitchdogPalette
---@field config ZitchdogConfig

---@type ZitchdogPalette?
M.palette = nil
---@type ZitchdogConfig?
M.config = nil

---@param palette ZitchdogPalette
---@param config ZitchdogConfig
function M.set(palette, config)
	M.palette = palette
	M.config = config
end

---@return ZitchdogPalette? palette
---@return ZitchdogConfig? config
function M.get()
	return M.palette, M.config
end

return M
