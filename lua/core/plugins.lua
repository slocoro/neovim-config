local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- color theme
  use 'ellisonleao/gruvbox.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'navarasu/onedark.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'

  -- syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }

  -- lsp stuff
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  -- vertical lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- terminal
  use 'akinsho/toggleterm.nvim'

  -- comment code
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
