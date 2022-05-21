local cmd = vim.cmd
cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }

  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'
  use 'editorconfig/editorconfig-vim'
  use 'sbdchd/neoformat'
  use 'TimUntersberger/neogit'
  use 'tpope/vim-commentary'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-surround'
  use 'sheerun/vim-polyglot'
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  -- statusline
  use "nvim-lualine/lualine.nvim"
  
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
  use { 'nvim-telescope/telescope-file-browser.nvim' }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- colorscheme
  use 'ishan9299/nvim-solarized-lua'
  use {
    "morhetz/gruvbox",
  }
  use 'sainnhe/everforest'
  use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim"
  } 
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
