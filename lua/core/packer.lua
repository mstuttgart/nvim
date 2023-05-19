  -- plugins setttings
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'git@github.com:wbthomason/packer.nvim.git', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()

  -- packer
  use { 'wbthomason/packer.nvim' }

  -- nvim-lsp configuration
  -- configure mason to install and manage LSP servers, linters and formatters
  use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
  }

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  }

  -- show git change (change, delete, add) signs in vim sign column
  use { 'lewis6991/gitsigns.nvim' }

  -- better visual guide
  use { 'lukas-reineke/indent-blankline.nvim' }

  -- comment code
  use {
    'echasnovski/mini.comment',
    branch = 'stable',
    config = function ()
      require('mini.comment').setup()
    end
  }

  -- highlight for color code
  use { 'norcalli/nvim-colorizer.lua' }

  -- auto close chars like '(', '{', '[' and ''
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim'},
    config = function()
      require('telescope').setup()
    end
  }

  -- telescope fzf support
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    requires = { 'nvim-telescope/telescope.nvim' },
    run = 'make',
  }

  -- themes
  use { 'Shatur/neovim-ayu' }
  use { 'neanias/everforest-nvim' }

  -- lualine status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup()
    end
  }

  -- syntax support
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

   -- create annotations for multiple linguages
  use {
    'danymat/neogen',
    requires = { 'nvim-treesitter/nvim-treesitter' },
    tag = '*',
  }

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }

  -- markdown preview :MarkdownPreviewToggle
  use {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  }

  -- neoscrooll
  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end
  }

  -- tags
  use { 'simrat39/symbols-outline.nvim' }

  -- navic complement to breadcumbs
  use {
    'utilyre/barbecue.nvim',
    tag = '*',
    requires = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons', -- optional dependency
    },
    after = 'nvim-web-devicons', -- keep this if you're using NvChad
    config = function()
      require('barbecue').setup()
    end,
  }

  -- close xml and html tags
  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,

  }

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end

end)