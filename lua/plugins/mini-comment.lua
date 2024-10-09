-- comment
local plugin = {
  "echasnovski/mini.comment",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  version = "*",
  event = "VeryLazy",
  opts = {},
  config = function()
    require("ts_context_commentstring").setup {
      enable_autocmd = false,
    }

    require("mini.comment").setup {
      options = {
        -- Whether to ignore blank lines
        ignore_blank_line = true,
        custom_commentstring = function()
          return require("ts_context_commentstring").calculate_commentstring() or vim.bo.commentstring
        end,
      },
    }
  end,
}

return {}
