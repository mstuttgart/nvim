-- Find, Filter, Preview, Pick. All lua, all the time.
local plugin = {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- change a keymap
    { "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>sW", LazyVim.pick("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
    { "<leader>sw", LazyVim.pick("grep_string", { root = false, word_match = "-w" }), desc = "Word (cwd)" },
    { "<leader>sW", LazyVim.pick("grep_string"), mode = "v", desc = "Selection (Root Dir)" },
    { "<leader>sw", LazyVim.pick("grep_string", { root = false }), mode = "v", desc = "Selection (cwd)" },
  },
}

return plugin
