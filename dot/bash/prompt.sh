function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Fill with minuses
# (this is recalculated every time the prompt is shown in function prompt_command):
RESET_COLOR='\[\033[00m\]'
WHITE=$RESET_COLOR
GRAY=$RESET_COLOR'\[\033[0;90m\]' # gray color; use 0;37m for lighter color
YELLOW=$RESET_COLOR'\[\033[0;33m\]' # gray color; use 0;37m for lighter color

# Prompt variable:
PS1="$GRAY$ "
PS1+="$YELLOW\W"
PS1+=" $GRAY[$YELLOW"
PS1+="\$(parse_git_branch)"
PS1+="$GRAY]"
PS1+=" $WHITE> "

