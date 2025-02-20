-- Set color scheme
vim.cmd([[colorscheme sorbet]])

-- Disable netrw so it doesn't interfere with nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set leader keys before lazy.nvim is loaded so mappings are correct
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Convert tabs to spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- Save undo history
vim.opt.undofile = true

-- Show which line the cursor is on
vim.opt.cursorline = true

-- Limit commands that are executable from modelines
vim.opt.secure = true
