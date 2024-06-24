local plugin = {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  init = function()
    vim.keymap.set({ "n", "v" }, "<leader>cf", function()
      require("conform").format {
        lsp_fallback = false,
        async = true,
        timeout_ms = 5000,
      }
    end, { desc = "Format file or range (in visual mode)" })

    vim.keymap.set(
      { "n", "v" },
      "<leader>cF",
      "<cmd>AutoFormatToogle<cr>",
      { desc = "Format file or range (in visual mode)" }
    )
  end,
  config = function()
    require("conform").setup {

      formatters_by_ft = {
        astro = { "prettier" },
        bash = { "shfmt" },
        css = { "prettier" },
        html = { "prettier" },
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
      },

      format_on_save = function(bufnr)
        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat then
          return
        end
        return { timeout_ms = 500, lsp_fallback = true }
      end,
    }

    -- autoformat default is desable
    vim.g.disable_autoformat = true

    vim.api.nvim_create_user_command("AutoFormatToogle", function(args)
      vim.g.disable_autoformat = not vim.g.disable_autoformat
    end, {
      desc = "Disable autoformat-on-save",
      bang = true,
    })

    require("conform").formatters.xmlformat = {
      prepend_args = { "--blanks", "--indent", "4", "--selfclose" },
    }

    require("conform").formatters.black = {
      prepend_args = { "--line-length", "120" },
    }
  end,
}

return plugin
