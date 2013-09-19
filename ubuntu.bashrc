# Command Overwrites
alias ls='ls --color=auto'

# Cli at start-up
bind 'set completion-ignore-case on'

# Set NodeJS
export NODE_PATH="/usr/local/lib/node_modules"

# Set Go tools
export GOPATH="$HOME/Code/_gocode"
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"

PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]# "

# Include Jump
. "$HOME/.bash/jump.sh"