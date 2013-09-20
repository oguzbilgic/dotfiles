# Colorize bash
export CLICOLOR=1
export LSCOLORS=ExFxCxDxbxegedabagacad

# Custom Prompt
. "$HOME/.bash/prompt.sh"

# Bash autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
