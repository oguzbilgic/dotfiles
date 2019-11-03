# Getting Started

## 1 - About The Manuals

### Two manuals

- The User manual
- The Reference manual
- `CTRL-]` jump to the tag under cursor
- `CTRL-t` jump to previous tag
- `CTRL-o` jump older position on jumplist

### Vim installed

### Using the Vim tutor

- `vimtutor` start the vim tutorial

### Copyright

## 2 - The First Steps in Vim

### Running Vim for the First Time

- `gvim file.txt` open the file using GUI vim
- `vim file.txt` open the file

### Inserting text
 
- `i` start Insert mode
- `<Esc>` stop Insert mode and go to Normal mode
- `'showmode'` show the current mode

### Moving around

- `h` move the cursor left
- `j` move the cursor down
- `k` move the cursor up
- `l` move the cursor right

### Deleting characters

- `x` delete the character under cursor
- `dd` delete a whole line

### Undo and Redo

- `u` undo the last edit
- `CTRL-R` reverse the last undo
- `U` undo all the changes made on the line

### Other editing commands

- `a` start insert mode with after the character (append)
- `o` open a new line below the cursor
- `O` open a new line above the cursor

### Getting out

- `ZZ` write the file and exit
- `:q!` quit the file without saving

### Finding help

- `:help` open the generic help
- `:help {subject}` open the help for the subject
- `:helpgrep {topic}` search in all help pages
- `CTRL-D` show possible options for the command

## 3 - Moving Around


### Word movement

- `w`, `b` move cursor forward/backward one word
- `e`, `ge` move cursor to the next/previous end of a word
- `W`, `B`, `E`, `gE` same but white-space separated words

### Moving to the start or end of a line

- `0`, `$` move the cursor to the start/end of line
- `^` move to the first non-black character of the line

### Moving to a character

- `fx`, `Fx` search forward/backward for the single character x
- `tx`, `Tx` same as `f` but stops before the character (till)
- `;` repeat the previous `f` or `t` command
- `,` repeat the previous `f` or `t` in the other direction

### Matching a parenthesis

- `%` jump between matching pairs of `()`, `{}` and `[]`
- `'matchpairs'` specify matching pairs

### Moving to a specific line

- `gg`, `G` jump to the beginning/end of the file
- `7G` jump to the specific line
- `H`, `M`, `L` jump to the first/middle/last visible line

### Telling where you are

- `CTRL-G` print the current cursor location in the file
- `'number'` display line numbers
- `'ruler'` display the cursor position in statusline

### Scrolling around

- `CTRL-U`, `CTRL-D` scroll up/down half a screen
- `CTRL-E`, `CTRL-Y` scroll up/down one line
- `CTRL-F`, `CTRL-B` scroll up/down by a whole screen
- `zt`, `zz`, `zb` puts the cursor top/middle/bottom of the screen

### Simple searches

- `/string` search for a string
- `n`, `N` jump to the next/previous search match
- `?word` search backwards
- `'ignorecase'` ignore case during search
- `*` search for the word under the cursor
- `/\<the\>` search for the whole word
- `'hlsearch'` highlight matches
- `'incsearch'` display matches during search

### Simple search patterns

- `/^`, `/$` match beginning/end of a line
- `/.` match any single character
- `/\.` escape character, match literal `.`

### Using marks

- `CTRL-O`, `CTRL-I` jump to older/newer position on jumplist
- `:jumps` list of positions you have jumped
- ```a`` go to mark a
- `ms` mark the current position `s`
- `:marks` list all the marks
- `'` same as `` ` `` but jumps to the beginning of the line
- ```>`` jump to last edited position
- ```````` jump to previous position
- ```[``, ```]`` jump to start/end of the last change
- ```"`` jump to position when last editing the file

## 4 - Making Small Changes
- Operators
  * d, c
- Repeating
  * .
- Visual Mode
  * v, V, CTRL-V
  * o, O
- Copying & Moving
  * y, yy, dd
  * p, P
  * "*yy, "*p clipboard
- Replace
  * r, R
- Text objects
  * a{w,s,p}, i{w,s,p}
- Other ways
  * I, A, ~

## 5 - Set Your Settings
- Vimrc
- Mappings
- Plugins
- Filetypes
- Option Window
- Help files

## 6 - Using Syntax Highlighting
- Syntax
  * :syntax
- Colors
  * :colo[rscheme]
  * :highlight

## 7 - Editing more than one file
- Args
  * :args
  * :n[ext], :prev[ious]
- Backups
- Registers
- Rename
  * :sav[eas]
  * :f[ile]
- File Marks
  * m{A-Z}
  * '. last delete
  * :marks

## 8 - Splitting Windows
- Windows
  * :sp[lit], :vsp[lit], :new
  * :close, :only
  * CTRL-W {c, n, v, o, w}
  * CTRL-W {+, -, _, |, =}
  * CTRL-W {t, b}
  * :qa[ll], :wa[ll]
- Vimdiff
  * :vert[ical] diffsplit
  * :vert[ical] diffpatch
  * ]c, [c
  * dp diff put
  * do diff obtain
- Tabs
  * :tabe[dit], :tabo[nly]
  * :tab {command}
  * gt go to next tab

## 9 - Using the GUI
- GUI
- Mouse
- Clipboard
  * "+ real clipboard
  * "* current selection

## 10 - Making Big Changes
- Macros
  * . repeats change
  * q{a-z} record macro
  * @{a-z} run macro
  * @@ run last macro
  * q{A-z} append to macro
- Substitution
  * :[%]s/from/to/[g, p, c, e]
- Ranges
  * :x,ycommand lines x to y
  * :xcommand on line x
  * :.command current line
  * :$command last line
  * :/pattern/,/pattern/command
  * :.+3,$-5command
  * :'t,'bcommand marks t to b
  * :'<,'>command visual
- Global
  * :global match and run command
  * :g/pattern/command
- Visual block
  * CTRL-V
  * ~, u, U change case
  * >, < indent
- Read & Write
  * :r[ead], :w[rite] filename
- Formatting & Case
  * gq reformat
  * gu, gU, g~
- External
  * :!{motion}{program}
  * :read !{command}
  * :write !{command}
  * CTRL-L redraw screen

## 11 - Recovering from a crash

## 12 - Clever Tricks
- Replace
  * \( \) matching
  * :.,/^$ search in range
  * :'t+1,.g/^/m 't
- Counting
  * g CTRL-G
- Man
  * K
- Grep
  * :grep word *.c
  * :clist
