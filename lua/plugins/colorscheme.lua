-- colorschemes

local plugins = {
  {
    "neanias/everforest-nvim",
    name = "everforest",
    lazy = true,
    priority = 1000,
    config = function()
      require("everforest").setup {
        italics = true,
        transparent_background_level = 1,

        -- Add underline to selected word
        on_highlights = function(hl, palette)
          hl.CurrentWord = { underline = true }
        end,
      }
      -- vim.o.background = "light"
      vim.cmd.colorscheme "everforest"
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    config = function()
      require("rose-pine").setup {
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = false,
        },
      }

      vim.cmd "colorscheme rose-pine"
      -- vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
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
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    lazy = true,
    priority = 1000,
    config = function()
      require("ayu").setup {
        mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      }
      vim.cmd.colorscheme "ayu"
    end,
  },
}

return plugins
