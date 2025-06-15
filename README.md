# My configuration for Linux env

## Table of Contents
1. [Neovim](##Neovim)
2. [Using Lua](###Using Lua)
3. [Helix](##Helix)

Config of my environment.

* CLI
  * ZSH / FISH
* 

## Prerequisites
* OhMZsh + plugins + powerlevel10k
* vim-plug / Packer
* tmux / zellij
* Language servers (https://github.com/helix-editor/helix/wiki/Language-Server-Configurations)

## Language servers
- https://github.com/helix-editor/helix/wiki/Language-Server-Configurations
- https://langserver.org/

## ZSH

## Install ZSH.
```
sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh
```

## Install Oh my ZSH.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install plugins.
 - autosuggesions plugin
 
	`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
	
 - zsh-syntax-highlighting plugin
 
	`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
	
 - zsh-fast-syntax-highlighting plugin
 
	`git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting`
	
 - zsh-autocomplete plugin
	
	`git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete`

## Enable plugins by adding them to .zshrc.
 - Open .zshrc
	
	`nvim ~/.zshrc`
	
 -  Find the line which says `plugins=(git)`.
	
 -  Replace that line with
	`plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)`
	
## References

 - [Oh my ZSH](https://github.com/ohmyzsh/ohmyzsh)
 - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
 - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
 - [zsh-fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)
 - [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)

## Neovim

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

## Helix
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

 ---------------- Tools --------------
CLI
- ZSH
- OMZ
- Alacritty
- Kitty
- Konsole (KDE)
- tmux / Zellij

SDK
- JDK (SDKman)
- Dotnet
- Go
- Rust (rustup)
- PyEnv
- NVM / FNM
- GHCUp

Editors
- Helix
- Neovin
- Emacs
- Sublime
- JB Toolbox

Graphics
- Krita
- Inkscape
- Flameshot
- VLC player

Themes
- https://tinted-theming.github.io/base16-emacs/
- https://emacsthemes.com/themes/leuven-theme.html
- 
