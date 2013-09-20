# Cli at start-up
bind 'set completion-ignore-case on'

# Set NodeJS
export NODE_PATH="/usr/local/lib/node_modules"

# Set Go tools
export GOPATH="$HOME/Code/_gocode"
export PATH="$GOPATH/bin:$PATH"

# Include Jump
. "$HOME/.bash/jump.sh"

# Include platform specific bashrc
if [ `uname` = "Darwin" ]; then
	. "$HOME/.bash/mac.bashrc"
elif [ `uname` = "Linux" ]; then
	. "$HOME/.bash/ubuntu.bashrc"
fi
