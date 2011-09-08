# Colorize the prompt
export CLICOLOR=1
export LSCOLORS=ExFxCxDxbxegedabagacad

# Extend include path
export PATH="/usr/local/bin:/usr/local/sbin:~/.bin:$PATH"

# advanced PROMPT
PS1="[\u] \W > "
PS1="\[\e[0;33m\]\u\[\e[m\] \[\e[0;31m\]:\[\e[m\] \[\e[0;33m\]\W\[\e[m\] \[\e[0;31m\]\$\[\e[m\] "
PS1="[\[\e[0;33m\]\u\[\e[m\]] \[\e[0;33m\]\W\[\e[m\] > "

# Command shortcuts
alias lsa='ls -a'
alias cl='clear'
alias db='cd ~/Dropbox'

# Command Overwrites
alias mv='mv -i'

# Folder shortcuts
function c { cd ~/Code/$1; ls; }
function p { cd ~/Projects/$1; ls; }

# Class shortcuts - Temp
function lab { cd ~/Code/cs-200/lab/lab$1; }
function hw { cd ~/Code/cs-200/hw/hw$1*; }

# Cli at start-up
clear; cd;
bind 'set completion-ignore-case on'
