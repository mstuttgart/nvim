-- configure neo-tree file explorer
local plugin = {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.default_component_configs.indent = {
      indent_marker = "┆",
      last_indent_marker = "└",
    }
  end,
}

return plugin
