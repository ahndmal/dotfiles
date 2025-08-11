export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME="af-magic"

# plugins=( git zsh-syntax-highlighting zsh-autosuggestions aws gcloud npm SDK )
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export EDITOR='hx'

###################### ENV                                                    
export ATLAS_HOME=""                                                          
export GO_HOME="/home/andrii/tools/go"
export JDTLS_HOME="/home/andrii/tools/lss/jdtls"
export KLS_HOME="/home/andrii/tools/kotlin-language-server/server/build/install/..."
export GRAALVM_HOME=/home/andrii/.sdkman/candidates/java/22.3.r19-grl

###################### PATH                                                   

export PATH="$PATH:$GO_HOME/bin"
export PATH="$PATH:$JDTLS_HOME/bin"
export PATH="$PATH:$KLS_HOME/bin"


export PATH=$PATH:/usr/local/bin/aws
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/go/bin

#### JAVA

source "$HOME/.sdkman/bin/sdkman-init.sh"


###################### ALIAS

alias hx helix                                                                
alias ems "emacs -nw"  

# Replace ls with eza                                                         
alias ls 'eza -al --color=always --group-directories-first --icons' # preferre
alias lsz 'eza -al --color=always --total-size --group-directories-first --ico
alias la 'eza -a --color=always --group-directories-first --icons'  # all file
alias ll 'eza -l --color=always --group-directories-first --icons'  # long for
alias lt 'eza -aT --color=always --group-directories-first --icons' # tree lis
alias l. 'eza -ald --color=always --group-directories-first --icons .*' # show

#### Common use                                                                  
alias .. 'cd ..'                                                              
alias ... 'cd ../..'                                                          
alias .... 'cd ../../..'                                                      
alias ..... 'cd ../../../..'                                                  
alias ...... 'cd ../../../../..'   
alias dir 'dir --color=auto'  
alias wget 'wget -c '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

