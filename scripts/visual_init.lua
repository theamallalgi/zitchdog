-- scripts/visual_init.lua

local script_path = debug.getinfo(1, "S").source:sub(2)
local repo_root = vim.fn.fnamemodify(script_path, ":p:h:h")
vim.opt.rtp:prepend(repo_root)

vim.o.termguicolors = true
vim.o.background = "dark"
require("zitchdog").load({ variant = "grape" })

-- Plugin setup happens after the theme is already loaded and
-- fully independent of it.
local lazypath = "/tmp/zitchdog-lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	{
		"folke/noice.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		event = "VeryLazy",
	},
	{ "folke/flash.nvim" },
	{ "nvim-neo-tree/neo-tree.nvim", dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" } },
	{ "lewis6991/gitsigns.nvim", opts = {} },
	{
		"saghen/blink.cmp",
		version = "*",
		opts = {},
	},
	{ "MeanderingProgrammer/render-markdown.nvim", opts = {} },
	{ "mbbill/undotree" },
	{ "rcarriga/nvim-notify" },
	{ "goolord/alpha-nvim" },
	{ "nvim-lualine/lualine.nvim", opts = {} },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}, {
	root = "/tmp/zitchdog-lazy/plugins",
})

-- Trigger UI-popup plugins based on an env var, so fixture files
-- can request the right popup without editing this file every time.
local trigger = vim.env.ZITCHDOG_TRIGGER
if trigger == "telescope" then
	vim.defer_fn(function()
		require("telescope.builtin").find_files()
	end, 200)
elseif trigger == "noice" then
	vim.defer_fn(function()
		vim.cmd("Noice")
	end, 200)
elseif trigger == "alpha" then
	vim.cmd("enew")
elseif trigger == "blink" then
	vim.defer_fn(function()
		vim.cmd("startinsert")
		vim.api.nvim_feedkeys("con", "n", false)
	end, 200)
end
