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
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use 'saadparwaiz1/cmp_luasnip' 

  use "onsails/lspkind-nvim"

  -- git
  use 'tpope/vim-fugitive' -- Git commands

  -- Language Servers
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Syntax Highlight
  use 'elixir-editors/vim-elixir'

end)
