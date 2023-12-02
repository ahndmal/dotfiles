
## Vanilla
Vanilla config in ```~/.config/nvim/init.vim``` with VimPlug.



1. Install Plugin manager: Vim-Plug (https://github.com/junegunn/vim-plug):
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
2. Add config into ```~/.config/nvim/init.vim```

## Lua config

### Packer config

docs - https://github.com/wbthomason/packer.nvim
```
:PackerUpdate
:PackerCompile
```

## CoC
warn: Need yarn
```
npm i -g yarn
```

Install CoC utils with yarn

```
:call coc#util#install()
```
