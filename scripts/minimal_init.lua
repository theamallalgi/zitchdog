-- scripts/minimal_init.lua
vim.opt.rtp:prepend(vim.fn.getcwd())

vim.o.number = true
vim.o.relativenumber = true
-- netrw config
-- vim.g.netrw_banner = 0 -- disable the how tos and stuff from netrw window
-- vim.g.netrw_mouse = 2 -- mouse config for netrw
-- vim.g.netrw_liststyle = 3 -- tree view
vim.g.netrw_winsize = 20 -- fix the left split width
vim.g.netrw_browse_split = 0 -- open files in the previous window
vim.g.netrw_altfile = 1 -- keep the alternate file correct
-- status bar
-- vim.opt.conceallevel = 0
-- vim.opt.cmdheight = 0
-- vim.opt.laststatus = 3
vim.o.termguicolors = true
vim.o.background = "dark"

require("zitchdog").load({ variant = "grape" })
