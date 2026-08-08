-- tests/fixtures/sample.lua

local M = {}

---@class Config
---@field debug boolean
local defaults = {
	debug = false,
	timeout = 500,
}

function M.setup(opts)
	opts = opts or {}
	local config = vim.tbl_deep_extend("force", defaults, opts)

	if config.debug then
		print("zitchdog: debug mode enabled")
	end

	return config
end

local function fetch(url, callback)
	local ok, err = pcall(function()
		vim.notify("Fetching " .. url)
		callback(nil, { status = 200 })
	end)

	if not ok then
		error("fetch failed: " .. err)
	end
end

return M
