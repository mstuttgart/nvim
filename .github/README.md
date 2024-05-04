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

I use this config. for my work as Full Stack Developer and for my hobby projects. Come with batteries included for Python, Javascript, Bash, Markdown, XML and YAML (Ansible).

> The intention of this configuration was never to be a fully customizable "distribution" like NvChad, LazyVim, etc. Use it for your inspiration

![Screenshot from 2024-05-04 14-21-42](https://github.com/mstuttgart/nvim/assets/8174740/51b6059b-cdf9-4478-b5f9-6340f3b847bb)


## Requirements

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

- [Nerd Fonts](https://www.nerdfonts.com/) (v3.0 or greater).
- [Git](https://git-scm.com/) - to install nvim plugins with [lazy.nvim](https://github.com/folke/lazy.nvim).
- [Node](https://nodejs.org/) and [NPM](https://www.npmjs.com/package/npm) - to install language servers and debug adapters with [mason.nvim](https://github.com/williamboman/mason.nvim).
- [Python3](https://www.python.org/) and [PIP](https://pip.pypa.io/en/stable/installation/) - to install formatters and linters.
- [ripgrep (rg)](https://github.com/BurntSushi/ripgrep) - to search patterns with [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim).
- [fd](https://github.com/sharkdp/fd) - to find files with [nvim-telescope](https://github.com/nvim-telescope/telescope.nvim).
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**.
- a **C** compiler for [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter#requirements).

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

## Features

The main features and plugins provided by this setup are as follows:

<details><summary> <b>Plugins (Click to expand!)</b></summary>

#### bars-and-lines

+ [SmiteshP/nvim-navic](https://dotfyle.com/plugins/SmiteshP/nvim-navic)
+ [utilyre/barbecue.nvim](https://dotfyle.com/plugins/utilyre/barbecue.nvim)
#### colorscheme

+ [shaunsingh/nord.nvim](https://dotfyle.com/plugins/shaunsingh/nord.nvim)
+ [sainnhe/gruvbox-material](https://dotfyle.com/plugins/sainnhe/gruvbox-material)
+ [catppuccin/nvim](https://dotfyle.com/plugins/catppuccin/nvim)
+ [neanias/everforest-nvim](https://dotfyle.com/plugins/neanias/everforest-nvim)
#### comment

+ [echasnovski/mini.comment](https://dotfyle.com/plugins/echasnovski/mini.comment)
+ [danymat/neogen](https://dotfyle.com/plugins/danymat/neogen)
#### completion

+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)
#### cursorline

+ [echasnovski/mini.cursorword](https://dotfyle.com/plugins/echasnovski/mini.cursorword)
#### editing-support

+ [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs)
#### file-explorer

+ [nvim-tree/nvim-tree.lua](https://dotfyle.com/plugins/nvim-tree/nvim-tree.lua)
#### formatting

+ [stevearc/conform.nvim](https://dotfyle.com/plugins/stevearc/conform.nvim)
#### fuzzy-finder

+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)
#### git

+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)
+ [kdheepak/lazygit.nvim](https://dotfyle.com/plugins/kdheepak/lazygit.nvim)
#### icon

+ [nvim-tree/nvim-web-devicons](https://dotfyle.com/plugins/nvim-tree/nvim-web-devicons)
#### indent

+ [echasnovski/mini.indentscope](https://dotfyle.com/plugins/echasnovski/mini.indentscope)
#### keybinding

+ [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)
+ [max397574/better-escape.nvim](https://dotfyle.com/plugins/max397574/better-escape.nvim)
#### lsp

+ [mfussenegger/nvim-lint](https://dotfyle.com/plugins/mfussenegger/nvim-lint)
+ [nvimtools/none-ls.nvim](https://dotfyle.com/plugins/nvimtools/none-ls.nvim)
+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
+ [hedyhli/outline.nvim](https://dotfyle.com/plugins/hedyhli/outline.nvim)
+ [onsails/lspkind.nvim](https://dotfyle.com/plugins/onsails/lspkind.nvim)
#### lsp-installer

+ [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)
#### markdown-and-latex

+ [iamcco/markdown-preview.nvim](https://dotfyle.com/plugins/iamcco/markdown-preview.nvim)
#### nvim-dev

+ [MunifTanjim/nui.nvim](https://dotfyle.com/plugins/MunifTanjim/nui.nvim)
+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)
#### plugin-manager

+ [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)
#### preconfigured

+ [AstroNvim/AstroNvim](https://dotfyle.com/plugins/AstroNvim/AstroNvim)
#### scrolling

+ [karb94/neoscroll.nvim](https://dotfyle.com/plugins/karb94/neoscroll.nvim)
#### search

+ [nvim-pack/nvim-spectre](https://dotfyle.com/plugins/nvim-pack/nvim-spectre)
#### session

+ [rmagatti/auto-session](https://dotfyle.com/plugins/rmagatti/auto-session)
#### snippet

+ [rafamadriz/friendly-snippets](https://dotfyle.com/plugins/rafamadriz/friendly-snippets)
+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
#### split-and-window

+ [echasnovski/mini.bufremove](https://dotfyle.com/plugins/echasnovski/mini.bufremove)
#### statusline

+ [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)
#### syntax

+ [nvim-treesitter/nvim-treesitter-textobjects](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-textobjects)
+ [kylechui/nvim-surround](https://dotfyle.com/plugins/kylechui/nvim-surround)
+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
#### tabline

+ [akinsho/bufferline.nvim](https://dotfyle.com/plugins/akinsho/bufferline.nvim)
#### utility

+ [folke/noice.nvim](https://dotfyle.com/plugins/folke/noice.nvim)
+ [rcarriga/nvim-notify](https://dotfyle.com/plugins/rcarriga/nvim-notify)
+ [stevearc/dressing.nvim](https://dotfyle.com/plugins/stevearc/dressing.nvim)

</details>

<details><summary> <b>LSP (Click to expand!)</b></summary>

+ ansiblels
+ bashls
+ cssls
+ html
+ lemminx
+ lua_ls
+ marksman
+ pyright
+ svelte
+ tsserver

</details>

## Credits

Copyright (C) 2023-2024 by Michell Stuttgart
