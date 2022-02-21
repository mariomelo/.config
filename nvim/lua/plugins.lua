return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- colors and windows
  use 'RRethy/nvim-base16'
  use 'mxw/vim-jsx'
  use 'elzr/vim-json'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup()
    end
  }

  -- search and complete
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'hrsh7th/nvim-cmp'
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")

  use("onsails/lspkind-nvim")

  -- git
  use 'tpope/vim-fugitive' -- Git commands
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Language Servers
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Syntax Highlight
  use 'elixir-editors/vim-elixir'

end)
