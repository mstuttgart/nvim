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
      dockerls = {},
      docker_compose_language_service = {},
      vuels = {},
    },
  },
}

return plugin
