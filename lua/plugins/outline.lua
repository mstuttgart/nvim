local plugin = {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = {
    { "<leader>ct", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  config = function()
    require("outline").setup()
  end,
}

return plugin
