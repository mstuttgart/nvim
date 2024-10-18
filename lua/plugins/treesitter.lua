-- treesitter settings
-- Highlight, edit, and navigate code
--
local plugin = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "css",
        "dockerfile",
        "dot",
        "embedded_template",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown_inline",
        "markdown",
        "python",
        "query",
        "regex",
        "rust",
        "ron",
        "ssh_config",
        "toml",
        "tsx",
        "typescript",
        "vue",
        "xml",
        "yaml",
      },
    },
  },
}

return plugin
