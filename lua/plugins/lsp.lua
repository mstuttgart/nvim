-- configure LSP

local plugin = {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {},
      cssls = {},
      pyright = {},
      bashls = {},
      ansiblels = {},
      lua_ls = {},
      lemminx = {},
      taplo = {},
      rust_analyzer = {
        on_attach = function(client, bufnr)
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end,
      },
      dockerls = {},
      docker_compose_language_service = {},
      vuels = {},
    },
  },
}

return plugin
