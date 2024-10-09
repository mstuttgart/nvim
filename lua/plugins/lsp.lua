-- configure LSP

local plugins = {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    vim.list_extend(opts.servers, {
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
    })
  end,
}

return plugins
