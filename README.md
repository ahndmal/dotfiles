# My configuration for Linux env

## Table of Contents
1. [Neovim](##Neovim)
2. [Using Lua](###Using Lua)
3. [Helix](##Helix)

Config of my environment.

- [ ] shell
  - [ ] zsh / omz / fish
  - [ ] omz plugins
  - [ ] tmux / zellij
  - [ ] alacritty / ghostty
- [ ] editors
  - [ ] helix
  - [ ] neovim
  - [ ] emacs
  - [ ] JB Idea
- [ ] lang
  - [ ] go
  - [ ] gcc
  - [ ] sdkman
    - [ ] jvm
    - [ ] kotlin
    - [ ] groovy
    - [ ] maven
    - [ ] gradle
  - [ ] pyenv
  - [ ] nvm
  - [ ] rustup
  - [ ] cargo
  - [ ] ghcup
  - [ ] dotnet sdk / runtime
- [ ] lang-servers
  - [ ] jdtls
  - [ ] groovyls
  - [ ] kotlin-ls
  - [ ] gopls
  - [ ] pyright
  - [ ] ts-lsp
  - [ ] rustic (emacs)
  - [ ] cider (emacs)
- [ ] graphics
  - [ ] gimp
  - [ ] krita
  - [ ] inkscape
  - [ ] flameshot
- [ ] net
  - [ ] httpie
  - [ ] apache benchmark
  - [ ] locust
  - [ ] grpc-cli
- [ ] wasm
  - [ ] [wabt tools](https://github.com/webassembly/wabt)
  - [ ] [wasm tools](https://github.com/bytecodealliance/wasm-tools)
  - [ ] [emscrypten](https://emscripten.org/)
  - [ ] [wasmtime](https://wasmtime.dev/)
  - [ ] graal wasm
- [ ] doc parsing
  - [ ] pandoc
  - [ ] QPDF
  - [ ] pdf2dom 

vim-plug / Packer

## [Language servers](https://github.com/helix-editor/helix/wiki/Language-Server-Configurations)
- https://github.com/helix-editor/helix/wiki/Language-Server-Configurations
- https://langserver.org/

## ZSH

Install ZSH.
```
sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting
```

Install Oh my ZSH.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install plugins.
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

Ways to configure:
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

#### Themes
- [Monokai Tasty](https://github.com/patstockwell/vim-monokai-tasty)
- [Github theme](https://github.com/projekt0n/github-nvim-theme)
- [Rose Pine](https://github.com/rose-pine/vim)
- [Kanagawa theme](https://github.com/zikajk/emacs-kanagawa-theme)

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
- dirvish

### Emacs theme
- [Kanagawa theme](https://github.com/zikajk/emacs-cobrakai-theme)
- [Leuven](https://emacsthemes.com/themes/leuven-theme.html)

## Fonts

- Agave Regular
- Fira code: https://github.com/tonsky/FiraCode
- Powerline: https://github.com/powerline/fonts
- Nerd fonts: https://www.nerdfonts.com/

## Tools
 
### CLI
- Alacritty
- Kitty
- Ghostty
- Konsole (KDE)
- tmux / Zellij

## SDK
- JDK ([SDKman](https://sdkman.io/))
- [Dotnet](https://dotnet.microsoft.com/en-us/download)
- [Go](http://go.dev/)
- Rust (rustup)
- [PyEnv](https://github.com/pyenv/pyenv)
- NVM / FNM
- [GHCUp](https://www.haskell.org/ghcup/)
- [Clojure](https://clojure.org)
- WASM tools

## Graphics
- Krita
- Inkscape
- Flameshot
- VLC player
- MPlayer

