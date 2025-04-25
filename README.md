# My configuration for Linux env

## Table of Contents
1. [Neovim](##Neovim)
2. [Using Lua](###Using Lua)
3. [Helix](##Helix)

Config of my environment.

## Prerequisites
1. OhMZsh
2. powerlevel10k
3. vim-plug / Packer
4. tmux / zellij
5. Language servers (https://github.com/helix-editor/helix/wiki/Language-Server-Configurations)

## LS
- https://github.com/helix-editor/helix/wiki/Language-Server-Configurations
- https://langserver.org/

## ZSH

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Plugins

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### Neovim

Two ways to configure:
1. Using vimrs/init.vim (+ plugin manager https://github.com/junegunn/vim-plug)
    ```bash
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```
2. Using Lua

#### Using Lua
Create structure for lua files:
- init.lua
- lua/me
  - lsp.lua
  - plugins.lua
  - remap.lua
  - set.lua
  - telescope.lua

### Helix
Config in ~/.config/helix:
- config.toml (general configuration)
- languages.toml (configuration for language servers for languages: https://github.com/ahndmal/.dotfiles/blob/main/helix/languages.toml)

## Emacs
https://github.com/ahndmal/dotfiles/blob/main/.config/.emacs.d/.emacs
- lsp-mode
- lsp-ui
- company
- company-jedi
- yasnippet
- flycheck
- dap-mode
- toml-mode
- which-key
- quickrun
- window-numbering
- autopair
- auto-complete
- 

## Fonts

- Fira code (https://github.com/tonsky/FiraCode)
- Powerline https://github.com/powerline/fonts
- Nerd fonts (https://www.nerdfonts.com/)
