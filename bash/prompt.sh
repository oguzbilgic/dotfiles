# Fill with minuses
# (this is recalculated every time the prompt is shown in function prompt_command):
fill="--- "

RESET_COLOR='\[\033[00m\]'
WHITE=$RESET_COLOR
GRAY=$RESET_COLOR'\[\033[0;90m\]' # gray color; use 0;37m for lighter color
YELLOW=$RESET_COLOR'\[\033[0;33m\]' # gray color; use 0;37m for lighter color

# Prompt variable:
PS1="$GRAY"'$fill'
PS1+="[$YELLOW\u$GRAY]"
PS1+=" $YELLOW\W"
PS1+=" $WHITE> "


function prompt_command {
  # create a $fill of all screen width minus the time string and a space:
  let fillsize=${COLUMNS}
  fill=""
  while [ "$fillsize" -gt "0" ]
  do
    fill="-${fill}" # fill with underscores to work on 
    let fillsize=${fillsize}-1
  done
}
PROMPT_COMMAND=prompt_command
