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
  
  use {
    "projekt0n/github-nvim-theme",
    -- after = "nvim-lualine/lualine.nvim",
    config = function()
      require("github-theme").setup({
          theme_style = "light",
          hide_inactive_statusline = false
        })
    end
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
end)
