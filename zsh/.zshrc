

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="af-magic"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME=robbyrussell

#POWERLEVEL9K_MODE="nerdfont-complete"


########################### PLUGINS ########################

plugins=(git)

source $ZSH/oh-my-zsh.sh

########################### ALIAS  ########################################


alias work="echo 'we are working 🎅' | lolcat && timer 45m"

#####################################################

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source "$HOME/.sdkman/bin/sdkman-init.sh"

ATLAS_HOME="/home/andrii/atlas/atlassian-plugin-sdk-8.2.7"

export GRAALVM_HOME=/home/andrii/.sdkman/candidates/java/22.3.r19-grl

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/andrii/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/andrii/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/andrii/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/andrii/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export WIKI_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1YmEyYTdhN2FlMDk1NGVlYzE2NDcwZWVhMzA5ZTVmOSIsImp0aSI6IjU1ZGFhYWFiZjA0NDJjYzVkNjRmOTY0YTk1YWUyMjc5YmVmZWIyMDlkNWI3ZTJhNGIzMTkyNWQ3OGIxZTBjN2NiYTM3OTMwZjg4YzNjMWI5IiwiaWF0IjoxNjcyOTQyMDk5LjA4MjY1NSwibmJmIjoxNjcyOTQyMDk5LjA4MjY1OCwiZXhwIjozMzIyOTg1MDg5OS4wNzg1MTQsInN1YiI6IjYzNzk3MzM4IiwiaXNzIjoiaHR0cHM6Ly9tZXRhLndpa2ltZWRpYS5vcmciLCJyYXRlbGltaXQiOnsicmVxdWVzdHNfcGVyX3VuaXQiOjUwMDAsInVuaXQiOiJIT1VSIn0sInNjb3BlcyI6WyJiYXNpYyIsImNyZWF0ZWVkaXRtb3ZlcGFnZSJdfQ.KVPTk-8QqSO-nPxF9ko1KwaKL2sM5qnHEcEHvylQpZgBbxW3XcP17xk9AxT3jB7w8UJwaxKtW2rBk4iyNln7TSIsdbQn-KSIQn1Q3dl2qJyLxq34OVPEWBvbtymfavgwayrXRLDlQyLGlowKKCh-XudHXD1w7ceBYn-b5NwTmbHidHcyJQPeI-SDc_R29eIvyBLyd6QFJvXYLuR3_LaQuC9eWLyKJODhCD0POG8ZRS4Px_nq8om64eOZIllWspybuyVwPtIU6ImZ75GlIYGh8ilXzhI6Gha73cHoiJsSeCOfX1FpjTiSCsS1LszIeNFJ-m60pYyxKVNche97nWJ8f6xE_qRHBSZwhRnu4jLx_QKLUJ_5lVQOmCBwV8NdbcMeAd4X2chpjffEIZkeqikxaXh6bsB6hTsgyERbwnZjvPji7igu80ChZQ1X3n3h5brdaYdZ1k64_1eTReZB62qjdDKqT2rTp6Usm4luRQsvDOjRlCUP8mUZ4ys7T1o0cfdmgZJMPsTwpwDJIhbfpSi8VcjWRp-PNdDE1E_WQ7A1GZa8fHwJxBSsLrwthBUX3mhdqLU3kn6tncrk6orzrftG-qPUC_d_pXKiEeIm4BRrzspiZDO_HexmScj74B-FHllJyfNfrAHEdCrlm5GxnQOZBWOKVHcS2EPGczjrCaF653g

export PATH=$PATH:/usr/local/bin/aws
export PATH=$PATH:/home/andrii/v
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/prog/go
export CARGO=$HOME/.cargo/bin

export EDITOR='nvim'




[ -f "/home/andrii/.ghcup/env" ] && source "/home/andrii/.ghcup/env" # ghcup-env

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




