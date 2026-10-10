
## Tools

```
sudo apt-get update -y
sudo apt-get install zsh tmux zip unzip neovim git gcc make
```

## zsh



### Neovim

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim

wget https://raw.githubusercontent.com/ahndmal/dotfiles/refs/heads/main/.config/nvim/init.lua

mv init.lua ~/.config/nvim
```

### Helix
```
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix

wget https://github.com/ahndmal/.dotfiles/raw/main/helix/config.toml
wget https://github.com/ahndmal/.dotfiles/raw/main/helix/languages.toml

mv config.toml languages.toml ~/.config/helix

```

### SDKman

```
curl -s "https://get.sdkman.io" | bash
```
```
sdk i java
sdk i gradle
sdk i groovy
sdk i kotlin
```

### NVM (Node)

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | bash
```

### AWS

```
curl -fsSL https://awscli.amazonaws.com/v2/install.sh | bash
```

### Azure

```
curl -fsSL 'https://azurecliprod.blob.core.windows.net/$root/deb_install.sh' | sudo bash
```

## C build tools

```
sudo apt-get install build-essential libz-dev zlib1g-dev -y
```

