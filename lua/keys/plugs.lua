-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- 本地变量
local map = vim.api.nvim_set_keymap
local opt = {
   noremap = true,
   silent = true
}

map('n', '<LEADER>e', ':NvimTreeToggle<CR><C-w>p', opt)
map('n', '<A-r>', ':NvimTreeRefresh<CR>', opt)
map('n', '<A-e>', ':NvimTreeFindFile<CR>', opt)
-- nnoremap <leader>e :NvimTreeToggle<CR><C-w>p
-- nnoremap <A-r> :NvimTreeRefresh<CR>
-- nnoremap <A-e> :NvimTreeFindFile<CR>


map('v', 'Y', '\"+y', opt)
