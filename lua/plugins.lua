local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'neovim/nvim-lspconfig'
  use { 'numToStr/Comment.nvim' }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use {
    "williamboman/mason.nvim",
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    "folke/which-key.nvim",
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use "windwp/nvim-autopairs"
  use "L3MON4D3/LuaSnip"
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
  use "simrat39/symbols-outline.nvim"
  use "rmagatti/goto-preview"
  use "rebelot/kanagawa.nvim"
  use 'tiagovla/tokyodark.nvim'
end)

