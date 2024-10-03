-- configure LSP
local plugins = {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require "lspconfig"

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      undercurl = true,
      update_is = false,
      virtual_text = { spacing = 4, prefix = "●" },
      severity_sort = true,
    })

    vim.cmd [[highlight DiagnosticUnderlineError cterm=undercurl gui=undercurl guisp=undercurl]]

    -- list of servers configured with default config.
    local servers = {
      "html",
      "cssls",
      "pyright",
      "bashls",
      "ansiblels",
      "lua_ls",
      "lemminx",
      "taplo",
      "dockerls",
      "docker_compose_language_service",
      "vuels",
    }

    -- lsps with default config
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        capabilities = capabilities,
      }
    end
  end,
}

return plugins
