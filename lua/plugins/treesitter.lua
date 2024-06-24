-- treesitter settings
-- Highlight, edit, and navigate code

local plugin = {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  cmd = {
    "TSUpdateSync",
    "TSUpdate",
    "TSInstall",
  },
  opts = function(_, opts)
    local function add(lang)
      if type(opts.ensure_installed) == "table" then
        table.insert(opts.ensure_installed, lang)
      end
    end

    vim.filetype.add {
      extension = { rasi = "rasi", rofi = "rasi", wofi = "rasi" },
      filename = {
        ["vifmrc"] = "vim",
      },
      pattern = {
        [".*/waybar/config"] = "jsonc",
        [".*/mako/config"] = "dosini",
        [".*/kitty/.+%.conf"] = "bash",
        [".*/.tmux.conf"] = "bash",
        [".*/hypr/.+%.conf"] = "hyprlang",
        ["%.env%.[%w_.-]+"] = "sh",
      },
    }

    add "git_config"

  end,
  config = function()
    require("nvim-treesitter.configs").setup {
      -- Add languages to be installed here that you want installed for treesitter
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "css",
        "dockerfile",
        "embedded_template",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown_inline",
        "markdown",
        "python",
        "query",
        "regex",
        "rust",
        "ron",
        "ssh_config",
        "toml",
        "tsx",
        "typescript",
        "vue",
        "xml",
        "yaml",
      },
      -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
        disable = { "python" },
      },
      context_commentstring = {
        enable = false,
        enable_autocmd = false,
        config = {
          python = "# %s",
        },
      },
    }
  end,
}

return plugin
