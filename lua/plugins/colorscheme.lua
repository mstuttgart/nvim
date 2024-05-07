-- colorschemes

local plugins = {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end,
  },
  {
    "neanias/everforest-nvim",
    name = "everforest",
    lazy = true,
    priority = 1000,
    config = function()
      require("everforest").setup {
        italics = true,
        transparent_background_level = 1,
      }
      -- vim.o.background = "light"
      vim.cmd.colorscheme "everforest"
    end,
  },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.cmd.colorscheme "gruvbox-material"
    end,
  },
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "nord"
    end,
  },
}

local themery = {
  "zaldih/themery.nvim",
  config = function()
    -- polulate themery theme options
    local themes = {}

    for _, theme in ipairs(plugins) do
      table.insert(themes, theme.name)
    end

    require("themery").setup {
      themes = themes, -- Your list of installed colorschemes
      themeConfigFile = "~/.config/nvim/lua/theme.lua", -- Described below
      livePreview = true, -- Apply theme while browsing. Default to true.
    }
  end,
}

table.insert(plugins, themery)

return plugins
