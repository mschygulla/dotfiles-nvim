# Neovim-minimal-config

## Introduction

This repository contains my Neovim configuration for Linux and macOS. It offers a streamlined, user-focused editor setup that prioritizes efficiency and comfort without attempting to be a full-featured integrated development environment.

## Features
+ Plugin management via [Lazy.nvim](https://github.com/folke/lazy.nvim)
+ Fast and fully programmable greeter [alpha-nvim](https://github.com/goolord/alpha-nvim)
+ Autocompletion for LSPs, cmdline and snippet via [blink.cmp](https://github.com/saghen/blink.cmp)
+ Beautiful VScode's dark theme [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
+ Copilot Chat [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)
+ Indentlines with [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
+ Beautiful statusline via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
+ File searching, previewing text files and more with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
+ Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
+ User-defined mapping hint via [which-key.nvim](https://github.com/folke/which-key.nvim)
+ Beautiful and configurable icons with [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
+ Useful snippets with [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

## Install and setup

```
git clone --depth 1 https://github.com/mschygulla/dotfiles-nvim.git ~/.config/nvim 
```

## Language server

I do not use any plugins to manage the installation and configuration of language server. I decided to manage the installation manually according to my needs.

### Language server for lua

Installation on linux:

```
mkdir -p $HOME/.local/share/lua-lang-server
tar xf lua-language-server-3.15.0-linux-x64.tar.gz -C $HOME/.local/share/lua-lang-server
ln -s $HOME/.local/share/lua-lang-server/bin/lua-language-server $HOME/.local/bin/lua-language-server
```
Installation on macOS:

```
brew install lua-lang-server
```

### Language server for bash

Installation on linux/macOS:

```
npm install -g bash-language-server
```

### Language server for python

Installation on linux/macOS:
```
npm install -g pyright
```

## UI Demo

### Start screen with dashboard-nvim

### File fuzzy finding using fzf-lua

### Code autocompletion with nvim-cmp


## Default Mappings

Some of the shortcuts I use frequently are listed here. In the following shortcuts, `<leader>` represents the `<space>` key.

| Mappings          | Action                                           |
|-------------------|--------------------------------------------------|
| `<leader>ff`      | Fuzzy file searching in a floating window        |
| `<leader>fh`      | Fuzzy help file grepping in a floating window    |
| `<leader>fg`      | Fuzzy project-wide grepping in a floating window |
| `<leader>fb`      | Fuzzy buffer switching in a floating window      |
| `<leader>`        | Keymaps (which-key)                              |
| `<C-space>`       | Toggle the completion menu                       |
| `<C-y>`           | Completion menu: select and accept               |
| `<C-e>`           | Completion menu: hide                            |
| `<leader>aa`      | Toggle the CopilotChat                           |
