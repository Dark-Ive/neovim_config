# Neovim Configuration

![Static Badge](https://img.shields.io/badge/Linux-yellow) ![Static Badge](https://img.shields.io/badge/Windows-blue) ![Static Badge](https://img.shields.io/badge/lazyvim-lightred) ![Static Badge](https://img.shields.io/badge/neovim-0.9%2B-lightblue)

A lightweight Neovim configuration made for wsl2 in windows. This is a setup made for my personal workflow.
Note: I'm a beginner in neovim... any insights are welcome

## Overview

To use this config in native linux environment, remove these lines from `init.lua` to remove the integration with win32yank,
  ```lua
  vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}
```

## Prerequisites

| Dependency | Version | Purpose |
|------------|---------|---------|
| [Neovim](https://neovim.io/) | 0.9.0+ | Core editor |
| [Git](https://git-scm.com/) | Latest | Repository cloning |
| [Nerd Font](https://www.nerdfonts.com/font-downloads) | Any | Icons and glyphs |
| [Node.js](https://nodejs.org/) | Any | LSP and plugin support |
| [win32yank](https://github.com/equalsraf/win32yank) | | Clipboard intergration for WSL | 

## Installation

1. **Clone the Repository**  
   Clone this configuration to your Neovim config directory:
   ```bash
   git clone https://github.com/Dark-Ive/neovim_config.git ~/.config/nvim
   ```

**Note**: Neovim may be slower in WSL compared to a native linux environment.
=======
# 💤 LazyVim 

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

