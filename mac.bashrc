# Colorize bash
export CLICOLOR=1
export LSCOLORS=ExFxCxDxbxegedabagacad

# Cli at start-up
bind 'set completion-ignore-case on'

# Custom Prompt
. "$HOME/.bash/prompt.sh"

# Bash autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Include Jump
. "$HOME/.bash/jump.sh"

# Set NodeJS
export NODE_PATH="/usr/local/lib/node_modules"

# Set Go tools
export GOPATH="$HOME/Code/_gocode"
export PATH="$GOPATH/bin:$PATH"
