local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use '9mm/vim-closer'
  use 'kyazdani42/nvim-web-devicons'
  use 'jiangmiao/auto-pairs'
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'editorconfig/editorconfig-vim'
  use 'sbdchd/neoformat'
  use 'TimUntersberger/neogit'

  -- autocomplete
  use { 'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  -- statusline
  use { 'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- git labels
  use { 'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  } 

  -- colorscheme
  use 'ishan9299/nvim-solarized-lua'
end)
