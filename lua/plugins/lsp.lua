-- configure LSP

local plugin = {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
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
    },
  },
}

return plugin
