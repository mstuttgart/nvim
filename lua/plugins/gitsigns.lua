-- Git integration for buffers
local plugin = {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    opts.current_line_blame = true -- Toggle with `:Gitsigns toggle_current_line_blame`
    opts.current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "right_align", -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    }
    opts.current_line_blame_formatter = "<author>, <author_time:%R> - <summary>"
  end,
}

return plugin
