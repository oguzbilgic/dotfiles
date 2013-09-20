# Command Overwrites
alias ls='ls --color=auto'

# Basic ubuntu prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]# "

# Required for manual installation of go
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
