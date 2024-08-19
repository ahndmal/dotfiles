# My configuration for Linux env

## Table of Contents
1. [Neovim](##Neovim)
2. [Using Lua](###Using Lua)
3. [Helix](##Helix)

Misc config of my environment

## Neovim

Two ways to configure:
1. Using vimrs/init.vim (+ plugin manager https://github.com/junegunn/vim-plug)
    ```bash
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```
3. Using Lua

### Using Lua
Create structure for lua files:
- init.lua
- lua/me
  - lsp.lua
  - plugins.lua
  - remap.lua
  - set.lua
  - telescope.lua

## Helix
Config in ~/.config/helix:
- config.toml (general configuration)
- languages.toml (configuration for language servers for misc langiages - https://github.com/ahndmal/.dotfiles/blob/main/helix/languages.toml)

## Fonts

- Fira code (https://github.com/tonsky/FiraCode)
- Powerline https://github.com/powerline/fonts
- Nerd fonts (https://www.nerdfonts.com/)
