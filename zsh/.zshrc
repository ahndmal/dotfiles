
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="af-magic"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

ZSH_THEME="powerlevel10k/powerlevel10k"

# POWERLEVEL9K_MODE="nerdfont-complete"

########################### PLUGINS ########################

plugins=( git zsh-syntax-highlighting zsh-autosuggestions aws gcloud npm sdk )

source $ZSH/oh-my-zsh.sh

#####################################################

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source "$HOME/.sdkman/bin/sdkman-init.sh"

export GRAALVM_HOME=/home/andrii/.sdkman/candidates/java/22.3.r19-grl

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/andrii/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/andrii/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/andrii/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/andrii/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$PATH:/usr/local/bin/aws
export PATH=$PATH:/home/andrii/v
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/prog/go
export CARGO=$HOME/.cargo/bin

export EDITOR='hx'



[ -f "/home/andrii/.ghcup/env" ] && source "/home/andrii/.ghcup/env" # ghcup-env

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




