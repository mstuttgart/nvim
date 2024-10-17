local plugin = {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = {
      astro = { "prettier" },
      bash = { "shfmt" },
      css = { "prettier" },
      html = { "prettier" },
      j2 = { "djlint" },
      javascript = { "prettier" },
      json = { "prettier" },
      lua = { "stylua" },
      markdown = { "prettier" },
      python = { "isort", "black" },
      toml = { "taplo" },
      typescript = { "prettier" },
      vue = { "prettier" },
      xml = { "xmlformat" },
      yaml = { "prettier" },
    }

    opts.formatters.xmlformat = {
      prepend_args = { "--blanks", "--indent", "4", "--selfclose" },
    }

    opts.formatters.black = {
      prepend_args = { "--line-length", "120" },
    }
  end,
}

return plugin
