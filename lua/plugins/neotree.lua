-- configure neo-tree file explorer
local plugin = {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.default_component_configs.indent = {
      indent_marker = "┆",
      last_indent_marker = "└",
    }

    opts.filesystem.filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
      hide_by_name = {
        "__pycache__",
      },
    }
  end,
}

return plugin
