# j, mark, unmark, marks
# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks

function j { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}

function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}

function unmark { 
    rm -i "$MARKPATH/$1"
}

function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

function _completemarks {
    reply=($(ls $MARKPATH))
}

function _completeLinuxJump {
	local cur=${COMP_WORDS[COMP_CWORD]}
	local marks=$(find $MARKPATH -type l -printf "%f\n")
	COMPREPLY=($(compgen -W '${marks[@]}' -- "$cur"))
	return 0
}

function _completeMacJump {
	local curw=${COMP_WORDS[COMP_CWORD]}
	local wordlist=$(find $MARKPATH -type l -exec basename {} \;)
	COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
	return 0
}

if [ `uname` = "Darwin" ]; then
	complete -o default -o nospace -F _completeMacJump j
elif [ `uname` = "Linux" ]; then
	complete -o default -o nospace -F _completeLinuxJump j
fi
