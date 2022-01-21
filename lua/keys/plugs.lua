-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
   noremap = true,
   silent = true
}

map('n', '<A-e>', ':NvimTreeToggle<CR>', opt)

map('v', 'Y', '\"+y', opt)
