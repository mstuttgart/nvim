local plugin = {
  "hedyhli/outline.nvim",
  opts = function(_, opts)
    opts.providers = {
      priority = { "lsp", "coc", "markdown", "norg" },
      -- Configuration for each provider (3rd party providers are supported)
      lsp = {
        -- Lsp client names to ignore
        blacklist_clients = {},
      },
      markdown = {
        -- List of supported ft's to use the markdown provider
        filetypes = { "markdown" },
      },
    }
  end,
  config = function()
    require("outline").setup({})
  end,
}

return {}
