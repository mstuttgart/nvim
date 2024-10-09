local plugin = {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    opts.linters_by_ft = {
      ansible = { "ansible_lint" },
      bash = { "shellcheck" },
      dockerfile = { "hadolint" },
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      markdown = { "markdownlint" },
      python = { "ruff" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      yaml = { "yamllint" },
    }
  end,
}

return plugin
