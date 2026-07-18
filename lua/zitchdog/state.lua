local M = {}

M.palette = nil
M.config = nil

function M.set(palette, config)
	M.palette = palette
	M.config = config
end

function M.get()
	return M.palette, M.config
end

return M
