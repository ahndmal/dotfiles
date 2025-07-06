set fish_greeting ""
set -U fish_prompt_pwd_dir_length 0

set ATLAS_HOME ""

fish_add_path ~/tools/go/bin
fish_add_path $ATLAS_HOME/bin

abbr "g" "git"
abbr "gl" "git log"
abbr "gp" "git push"
abbr "gpf" "git push --force-with-lease"
abbr "gs" "git status"
abbr "gup" "git pull --rebase"
abbr "ls" "eza -la"
abbr "sw" "gg switch"
abbr "swd" "git switch --detach"
abbr "zz" "./zig/zig"

alias "rr" "~/config/tools/remote-run.sh  andrii 192.168.2.4"
alias "rsh" "ssh root@192.168.2.4"


fish_config theme choose termcolors
