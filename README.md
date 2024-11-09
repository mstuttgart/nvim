<h2 align="center">
    <br>
  <a href="https://neovim.io">
    <img src="https://github.com/mstuttgart/nvim/assets/8174740/585d3de3-fb9e-43f8-bc43-068aa073b157" width="50%">
  </a>
</h2>

<p align="center">

<a href="https://dotfyle.com/mstuttgart/nvim">
<img src="https://dotfyle.com/mstuttgart/nvim/badges/plugins?style=for-the-badge" />
</a>
<a href="https://dotfyle.com/mstuttgart/nvim">
 <img src="https://dotfyle.com/mstuttgart/nvim/badges/leaderkey?style=for-the-badge" />
</a>
<a href="https://dotfyle.com/mstuttgart/nvim">
 <img src="https://dotfyle.com/mstuttgart/nvim/badges/plugin-manager?style=for-the-badge" />
</a>

</p>

<p align="center">
  <a href="#about">About</a> |
  <a href="#requirements">Requirements</a> |
  <a href="#install">Install</a> |
  <a href="#features">Features</a> |
  <a href="#credits">Credits</a>
</p>

## About

Wekcome to my [Neovim](https://neovim.io/) configuration. 

- Based on [LazyVim](https://www.lazyvim.org/)
- Blazing fast startup time with [lazy.nvim](https://github.com/folke/lazy.nvim)
- Language Server Protocol with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- Resolving lsp servers, linters and formatters [mason.nvim](https://github.com/williamboman/mason.nvim)
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Formatting with [conform.nvim](https://github.com/stevearc/conform.nvim)
- Asynchronous linter with [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- Snippets with [LuaSnip](https://github.com/L3MON4D3/LuaSnip) and [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- Fuzzy find with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) and [fzf-lua](https://github.com/ibhagwan/fzf-lua)

I use this config. for my work as Full Stack Developer and for my hobby projects. Come with batteries included for `Python`, `Javascript (Vanilla and Vuejs)`, `Typescrypt`, `Rust`, `Bash`, `Markdown`, `Makefile`, `XML`, `JSON`, `TOML` and `YAML (Ansible)`.

![2024-11-09_10-48](https://github.com/user-attachments/assets/464ad74f-7779-47e4-b06a-da45372f6914)

## Requirements

> [!NOTE]
> Install requires Neovim 0.10+. 

> [!CAUTION]
> Always review the code before installing a configuration.

- [Nerd Fonts](https://www.nerdfonts.com/) (v3.0 or greater).
- [Git](https://git-scm.com/) - to install nvim plugins with [lazy.nvim](https://github.com/folke/lazy.nvim).
- [Node](https://nodejs.org/) and [NPM](https://www.npmjs.com/package/npm) - to install language servers, formmaters and linters with [mason.nvim](https://github.com/williamboman/mason.nvim).
- [Python](https://www.python.org/) and [PIP](https://pip.pypa.io/en/stable/installation/) - to install language servers, formmaters and linters with [mason.nvim](https://github.com/williamboman/mason.nvim).
- [Cargo](https://github.com/rust-lang/cargo) - to install language servers, formmaters and linters with [mason.nvim](https://github.com/williamboman/mason.nvim).
- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep) - to search patterns with [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim).
- [fd](https://github.com/sharkdp/fd) - to find files with [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim).
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**.
- a **C** compiler for [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter#requirements).

## Install

If you have a previous `Neovim` config, make sure to make a backup before installing this 
setup.

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Remove old `Neovim` cache setup (if you have a previous `Neovim` config) to a clean install:

```bash
rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

To install this configuration, you just need to clone this repository:

```bash
git clone https://github.com/mstuttgart/nvim ~/.config/nvim --depth 1
```

Finally, start `Neovim`

```bash
nvim
```

## Credits

Copyright (C) 2023-2024 by Michell Stuttgart
