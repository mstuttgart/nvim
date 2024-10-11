-- update plugin settings
--
local plugin = {
  "lukas-reineke/indent-blankline.nvim",
  opts = function(_, opts)
    opts.indent = {
      char = "┆",
      tab_char = "┆",
    }
  end,
}

return plugin
