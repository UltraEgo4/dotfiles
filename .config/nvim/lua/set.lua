vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.scrolloff = 8

vim.opt.updatetime = 50


vim.opt.signcolumn = "number"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


vim.cmd[[colorscheme nvimgelion]]


