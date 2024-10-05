local vim = vim
local Plug = vim.fn['plug#']

-- plugins
vim.call('plug#begin')
    Plug('rebelot/kanagawa.nvim')
    Plug('nvim-lualine/lualine.nvim')
	Plug('nvim-treesitter/nvim-treesitter')
vim.call('plug#end')

-- various options
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- colors
vim.cmd('colorscheme kanagawa')

-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'NONE' })

-- status line
require('lualine').setup()
