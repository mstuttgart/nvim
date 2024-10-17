-- Configure mason to autoinstall linters and formatters

local plugins = {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      -- lsp
      "ansible-language-server",
      "astro-language-server",
      "bash-language-server",
      "css-lsp",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "html-lsp",
      "jinja-lsp",
      "json-lsp",
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
      "djlint",
      "isort",
      "prettier",
      "shfmt",
      "stylua",
      "yamlfmt",
      "taplo",
      "xmlformatter",
    })
  end,
}

return plugins
