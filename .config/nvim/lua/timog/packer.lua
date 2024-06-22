vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer'
    
    -- Fuzzy finder
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- Auto dark-mode
    use { "f-person/auto-dark-mode.nvim" }

    -- Themes
    use { "ellisonleao/gruvbox.nvim" }
    use {'lunarvim/horizon.nvim'}
    use { 'rmehri01/onenord.nvim' }
    
    -- Syntax tree parsing
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    
    -- Undo tree
    use('mbbill/undotree')
    
    -- Git integration
    use('tpope/vim-fugitive')

    -- Git diff markers
    use('airblade/vim-gitgutter')
    
    -- LSP Config
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
    
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }
    use('hrsh7th/vim-vsnip')
    use("simrat39/rust-tools.nvim")

  -- Indent guide
  use "lukas-reineke/indent-blankline.nvim"
end)
