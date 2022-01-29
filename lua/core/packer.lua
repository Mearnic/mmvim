local M = {}

local funcs = require("core.funcs")
local constant = require("core.constant")

function M.clone_packer(packer_file)
    local packer_file = constant.data_site_path .. "/pack/packer/opt/packer.nvim"
    if funcs.file_not_exists(packer_file) then
        print("下载Packer插件管理器中 ...")
        funcs.git_clone_file("https://github.com/wbthomason/packer.nvim", packer_file)
    end
     
      vim.cmd "packadd packer.nvim"
      local packer = require("packer")
      packer.init {
        git = {clone_timeout = 30000},
      }

      packer.startup(function()
        use 'wbthomason/packer.nvim'
        use 'glepnir/zephyr-nvim'
        use 'shaunsingh/nord.nvim'
        use {
          'ellisonleao/gruvbox.nvim',
          requires = {'rktjmp/lush.nvim'}
        }
        use {
          'kyazdani42/nvim-tree.lua',
          requires = 'kyazdani42/nvim-web-devicons'
        }
        use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
        use {
          'nvim-lualine/lualine.nvim',
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
    
        use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    
    end)
    packer.install()
end


return M