-- colorschemes

local plugins = {
  {
    "neanias/everforest-nvim",
    name = "everforest",
    lazy = true,
    priority = 1000,
    config = function()
      require("everforest").setup({
        transparent_background_level = 1,
        italics = true,
        disable_italic_comments = false,
        -- Add underline to selected word
        on_highlights = function(hl, palette)
          hl.CurrentWord = { underline = true }
        end,
      })
    end,
  },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    opts = {
      -- configurations go here
    },
  },
}

return plugins
