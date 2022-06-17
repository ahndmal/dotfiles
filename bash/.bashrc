#
# ~/.bashrc
#

DISTRO=$(cat /etc/os-release | sed -rn "s/\<ID=(.*?)/\u\1/p")
PS1="\e[38;5;45m$DISTRO\e[m [\u@\h] \e[38;5;45m\w\e[m \n"
unset DISTRO


# exports
export PATH=$PATH:$HOME/Applications
export GOPATH=$HOME/.local/lib/go/site-packages