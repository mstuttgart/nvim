-- general plugins
local plugins = {

  -- better scape shortcuts
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- smooth scroll
  {
    "karb94/neoscroll.nvim",
    event = "InsertEnter",
    config = function()
      require("neoscroll").setup({})
    end,
  },

  -- odoo snippets
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "mstuttgart/odoo-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- configure notify
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
      -- background_colour = "#000000",
      render = "wrapped-compact",
    },
  },

  -- configure breadcubs
  -- {
  --   "utilyre/barbecue.nvim",
  --   version = "*",
  --   dependencies = {
  --     "SmiteshP/nvim-navic",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   config = true,
  -- },

  -- disable trouble
  { "catppuccin/nvim", enabled = false },
  { "folke/tokyonight.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "nvim-neotest/neotest", enabled = false },
  { "mfussenegger/nvim-dap", enabled = false },
  { "folke/edgy.nvim", enabled = false },
  { "stevearc/overseer.nvim", enabled = false },
  { "ThePrimeagen/refactoring.nvim", enabled = false },
  { "echasnovski/mini.move", enabled = false },
  { "rafamadriz/friendly-snippets", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
  { "rcarriga/nvim-dap-ui", enabled = false },
  { "folke/todo-comments.nvim", enabled = false },
  { "hedyhli/outline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
}

return plugins
