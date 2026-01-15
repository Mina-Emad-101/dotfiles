-- vim.opt.shell = '/bin/bash'

-- Persistent Undo
vim.o.undofile = true
vim.o.undodir = vim.fn.expand("~/.config/nvim/undofiles")

-- disable netrw at the very start of your init.lua
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

vim.opt.autoindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.o.clipboard = "unnamedplus"

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 500

vim.wo.wrap = false

vim.opt.foldmethod = "manual"
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevelstart = 99

vim.api.nvim_create_autocmd("FileType", {
	pattern = "javascript,js,html,blade,blade.php",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "fs,fsx,fsharp",
	callback = function()
		vim.opt.expandtab = true
	end
})
