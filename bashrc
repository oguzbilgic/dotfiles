# Colorize bash
export CLICOLOR=1
export LSCOLORS=ExFxCxDxbxegedabagacad

# Extend include path
export PATH="/usr/local/bin:/usr/local/sbin:~/.bin:$PATH"

# Command Overwrites
alias mv='mv -i'

# Folder shortcuts
function c { cd ~/Code/$1; ls; }
function p { cd ~/Projects/$1; ls; }

# Cli at start-up
clear; cd;
bind 'set completion-ignore-case on'

# Custom Prompt
PS1="[\[\e[0;33m\]\u\[\e[m\]] \[\e[0;33m\]\W\[\e[m\] > "
. "$HOME/.bash/prompt.sh"
