-- Useful plugin to show you pending keybinds.
local plugin = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
      ["<leader>b"] = { name = "+buffer" },
      ["<leader>c"] = { name = "+code" },
      ["<leader>d"] = { name = "+diagnostics/quickfix" },
      ["<leader>e"] = { name = "+explorer" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>s"] = { name = "+search" },
      ["<leader>u"] = { name = "+ui" },
    },
  },
  config = function(_, opts)
    local wk = require "which-key"
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}

return plugin
