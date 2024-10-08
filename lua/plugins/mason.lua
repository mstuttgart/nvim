-- Configure mason to autoinstall linters and formatters
local plugins = {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    -- setup mason settings
    require("mason").setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    }

    require("mason-tool-installer").setup {
      ensure_installed = {
        -- lsp
        "ansible-language-server",
        "astro-language-server",
        "bash-language-server",
        "css-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "html-lsp",
        "lemminx",
        "lua-language-server",
        "marksman",
        "pyright",
        "taplo",
        "typescript-language-server",
        "vue-language-server",
        "yaml-language-server",

        -- linters
        "ansible-lint",
        "eslint_d",
        "markdownlint",
        "prettier",
        "hadolint", -- dockerfile lint
        "ruff", -- python lint
        "shellcheck",
        "yamllint",

        -- formatters
        "black",
        "isort",
        "prettier",
        "shfmt",
        "stylua",
        "yamlfmt",
        "taplo",
        "xmlformatter",
      },

      -- auto-install configured servers (with lspconfig)
      automatic_installation = true,
    }
  end,
}

return plugins
