-- A high-performance color highlighter
local plugin = {
  "NvChad/nvim-colorizer.lua",
  event = "VeryLazy",
  lazy = true,
  keys = {
    { "<leader>cC", "<cmd>ColorizerToggle<CR>", desc = "commits" },
  },
  config = function()
    require("colorizer").setup({
      filetypes = {
        "conf",
        "css",
        "javascript",
        "lua",
        "svelte",
        "toml",
        "typescript",
        "vim",
        html = { mode = "foreground" },
      },
    })
  end,
}

return plugin
