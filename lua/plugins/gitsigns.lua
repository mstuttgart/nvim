-- gitsigns settings

local plugin = {
  'lewis6991/gitsigns.nvim',
  opts = {
    current_line_blame = true,
    current_line_blame_formatter_opts = {
      relative_time = false,
    },
    signs = {
      add = { text = '▎' },
      change = { text = '▎' },
      delete = { text = '➤' },
      topdelete = { text = '➤' },
      changedelete = { text = '▎' },
    },
  },
}

return plugin