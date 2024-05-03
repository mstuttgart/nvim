<h2 align="center">
    <br>
  <a href="https://neovim.io">
    <img src="https://github.com/mstuttgart/nvim/assets/8174740/585d3de3-fb9e-43f8-bc43-068aa073b157" width="50%">
  </a>
</h2>

<p align="center">

<a href="https://dotfyle.com/mstuttgart/dotfiles-config-nvim">
<img src="https://dotfyle.com/mstuttgart/dotfiles-config-nvim/badges/plugins?style=for-the-badge" />
</a>
<a href="https://dotfyle.com/mstuttgart/dotfiles-config-nvim">
 <img src="https://dotfyle.com/mstuttgart/dotfiles-config-nvim/badges/leaderkey?style=for-the-badge" />
</a>
<a href="https://dotfyle.com/mstuttgart/dotfiles-config-nvim">
 <img src="https://dotfyle.com/mstuttgart/dotfiles-config-nvim/badges/plugin-manager?style=for-the-badge" />
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

## Credits

Copyright (C) 2023-2024 by Michell Stuttgart
