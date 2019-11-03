# Editing Effectively

## 20 - Typing command-line commands quickly

### Command line editing

- `S-Left`, `S-Right` jump one word 
- `CTRL-B` jump to the beginning of command line
- `CTRL-E` jump to the end of command line
- `CTRL-W` delete a word
- `CTRL-U` clear the line

### Command line completion

- `CTRL-D` show matches

### Command line history

- `:history` show command line history

### Command line window

- `q:` open command line window

## 21 - Go away and come back

### Suspend and resume

- `CTRL-Z`, `:suspend` move vim process to background

### Executing shell commands

- `:!{prog}` execute a cli program
- `:r[ead] !{prog}` execute and read the output to buffer
- `:w[write] !{prog}`
- `:[range]!{prog}` filter text through program
- `:shell` start shell

### Remembering information; viminfo

- `'0` go to the last edited file
- `:oldfiles` list recently edited files
- `:browse {command}`

### Sessions

- `:mksession name.vim` save the session
- `:source name.vim` open a session
- `vim -S name.vim` open a session

### Views

- `:mkview` store view options for the current file
- `:loadview`

### Modelines

- file specific vim options


## 22 - Finding the file to edit

### The file browser

- `:edit .` open the file browser (netrw)
- netrw: o, v, p, P, t
- `:Explore`, `:Sexplore`
- `:NetrwSettings`

### The current directory

- `:pwd` echo the current directory name.
- `:cd` change the current directory
- `:lcd` change the current directory for the window
- `:tcd` change the current directory for the tab

### Finding a file

- `gf` open the file under cursor
- `'path'`
- `:find`
- `CTRL-W_f` open a window for the file under cursor

### The buffer list

- `:hide`, `'hidden'`
- `:buffers`, `:ls` lists open buffers
- `:buffer,`, `:sbuffer`
- `:bnext`, `:bprevious`
- `:bfirst`, `:blast`
- `:bdelete` deletes buffer

## 23 - Editing other files

### DOS, Mac and Unix files

- `'fileformat'`

### Files on the internet

- ftp, rcp, scp and http

### Encryption

- vim -x secret.txt
- `'key'`

### Binary files

- vim -b datafile
- `'binary'`
- `g_CTRL-g` byte position
- `123go` goes to 123th byte

### Compressed files

- .Z .gz .bz2

## 24 - Inserting quickly

### Making corrections

- `CTRL-W` delete whole word
- `CTRL-U` delete whole line
- `<S-left>` `<S-right>` jump words

### Showing matches

- `'showmatch'` show match of ( { [
- `'matchtime'` duration of highlight

### Completion

- `CTRL-P`, `CTRL-N` prev & next complete match
- `'complete'` search order
- `'infercase'` ignore case
- `CTRL-X CTRL-F` file names
- `CTRL-X CTRL-L` whole lines
- `CTRL-X CTRL-V` Vim command line
- `CTRL-X CTRL-O` omni complete

### Repeating an insert

- `CTRL-A` insert last word typed
- `CTRL-@` insert last word typed and exit

### Copying from another line

- `CTRL-Y` insert the character above the cursor
- `CTRL-E` insert the character below the cursor

### Inserting a register

- `CTRL-R {register}` insert the contents of the register
- `CTRL-R CTRL-R {register}` insert literal contents

### Abbreviations

- `:iabbrev {short} {long}` add insert mode abbreviation
- `:cabbrev {short} {long}` add command line abbreviation
- `:abbreviate` list the abbreviations
- `:unabbreviate` delete abbreviations
- `:abclear` delete all abbreviations

### Entering special characters

- `CTRL-V {char}` insert the next character literally

### Digraphs

- `CTRL-K` insert digraph
- `:digraphs` list digraphs
- `:digraph` define a digraph

### Normal mode commands

- `CTRL-O {command}` execute command from insert mode

## 25 - Editing formatted text

### Breaking lines

- `'textwidth'` insert line breaks automatically
- `'wrap'` fit lines to the window width
- `gq` reformat operator
- `'auto-format'`, `'fo-table'`, `'joinspaces'`, `'formatprg'`

### Aligning text

- `:center`, `:right`, `:left` align text

### Indents and tabs

- `'autoindent'`
- `>,` `<` increase or decrease indent operator
- `'shiftwidth'` amount of indent
- `'softtabstop'` number of spaces inserted for tab
- `'expandtab'` always insert space, not tab
- `'tabstop'` width of tab character
- `:retab` replace tab character with space

### Dealing with long lines

- `zh`, `zl` scroll right/left
- `zH`, `zL` scroll half window right/left
- `zs`, `ze` scroll start/end
- `g0`, `gm`, `g$` move to first/middle/last visible char
- `g^` move to first non-blank visible character
- `'linebreak'` don't wrap in the middle of word
- `gk`, `gj` move up/down for wrapped lines
- `:join` join lines

### Editing tables

- `'virtualedit'`
- `gr`, `gR` virtual replace mode

## 26 - Repeating

### Repeating with Visual mode

- `gv` visually select same area again

### Add and subtract

- `CTRL-A` add count to selected text
- `CTRL-X` subtract count to selected text

### Making a change in many files

- `:argdo {command}` execute command in each arg
- `:windo {command}` execute command in each window
- `:bufdo {command}` execute command in each buffer
- `:update` write file only if updated
- `|` for multiple commands {cmd1} | {cmd2}

### Using Vim from a shell script

- `vim -s `silent mode, no prompt
- `vim {file} < commands.vim` run commands
- `ls | vim -` put output of ls into vim
- `vim -w script` record commands in script file

## 27 - Search commands and patterns

### Ignoring case

- `'ignorecase'`
- `'hlsearch'` highlight as search
- `'smartcase'` case sensitive if upper case
- `\c` `\C` case sensitivity for pattern

### Wrapping around the file end

- `'ruler'` display cursor position in status line
- `'wrapscan'` go to first match when search is complete

### Offsets

- `/pattern/2` leaves cursor 2 characters after match
- `/pattern/e{count}` leaves cursor at the end of the match
- `/pattern/b{count}` leaves cursor at the beginning of the match
- `//` repeats last search

### Matching multiple times

- `*` can match previous item any number of times
- `/\(ab\)*` ab multiple times
- `\+` avoid matching empty string
- `\=` makes previous item optional
- `\{3,5}` matches b 3 to 5 times
- `\{-}` matches item before zero or more times

### Alternatives

- `\|` or operator `/foo\|bar`
- `\&` and operator

### Character ranges

- `[a-z]` match single character from the range
- `\e` escape, `\t` tab, `\r` cr, `\b` bs
- `[^x]` any character but x
- `\a`, `\d`, `\s`, `\D` predefined ranges

### Character classes

- `\f` file name characters
- `\i` identifier characters
- `\k` keyword characters
- `\p` printable characters

### Matching a line break

- `\n` line break
- `\_s` space or line break

## 28 - Folding

### Manual folding

- `zf` fold operator
- `zo` open fold
- `zc` close fold
- `zr`, `zR` open all folds
- `zm`, `zM` close all folds
- `zn`, `zN` disable/enable folding
- `zi` toggle folding

### Working with folds

- `'foldmethod'`
- `'foldcolumn'` to show fold column
- `zO` open all folds at the cursor
- `zC` close all folds at the cursor
- `zd` delete a folds at the cursor
- `zD` delete all folds at the cursor
- `'foldopen'` `'foldclose'`

### Folding by indent

- `foldmethod=indent`
- `'foldlevel'`

### Folding with markers

- `foldmethod=marker`
- {{{ }}}}

### Folding by syntax


### Folding by expression

- `foldmethod=expr`
- `'foldexpr'`

### Folding unchanged lines

- `foldmethod=diff`

## 29 - Moving through programs

### Using tags

- Use `ctags` to generate tags file
- `:tag {functionname}` to jump to function definition
- `CTRL-]` jump to the tag under cursor
- `:tags` show the list of tags traversed
- `CTRL-T` go to the preceding tag
- `:tag` go to the tag on top of the list
- `:stag {tag}` jump to the tag on split window
- `CTRL-W ]` jump to the tag on split window
- `'tags'` tags files
- `:tnext` jump to the other matches for the same tag
- `:tselect {tagname}` select a match for the tag
- `:tfirst`, `:tlast`

### The preview window

- `:ptag {tag}` display tag in a preview window
- `CTRL-W }` display the tag under cursor in a preview window
- `:pclose` close the preview window
- `:pedit` edit a file in the preview window
- `:psearch` search the word in preview window
- `'previewheight'` preview window height

### Moving through a program

- `%` move between matching (), {}, []
- `[#`, `]#`
- `[[`, `][`
- `[{`, `]}` jump to the start/end of the outer { block
- `]m`, `[m` jump to the previous/next method
- `[(`, `])` jump to the start/end of the outer ( block
- `[/`, `]/` jump to the start/end of / comment line

### Finding global identifiers

- `[I` list matching lines for the word under the cursor
- `'include'` to specify which files are included
- `:checkpath` to check 'path'
- `[<TAB>` jump to the first match in [I 
- `]I` list items below the cursor
- `[D`, `]D`, `[d`, `]d` finding macros for `#define`

### Finding local identifiers

- `gD` go to the first match under the cursor
- `gd` go to the first match with in the function

## 30 - Editing programs

### Compiling

- `:make {arguments}` compile the source code with quickfix
- `:cnext`, `:cprevious` jump to next/prev quickfix error
- `:cc` echo the whole error message
- `:clist` echo all the error messages
- `:cfirst`, `:clast` jump to the first/last error message
- `'makeprg'` change what program `:make` command runs
- `:colder`, `:cnewer` go to older/newer quickfix list
- `'errorformat'` define the output of `'makeprg'` is parsed
- `:compiler {name}` switch to `'makeprg'` and '`errorformat'`
- `:cfile {filename}` populate quickfix list from a file

### Indenting C files

- `'cindent'` set indentation options for C programs
- `=` indentation operator
- `'cinoptions'` change indentation style for C programs

### Automatic indenting

- `:filetype indent on` enable automatic indentation
- `:let b:did_indent = 1`
- `indent/{filetype}.vim` filetype specific indentation
- `'filetype'` file type of the buffer
- `'runtimepath'` path the vim searches for .vim files

### Other indenting

- `'autoindent'` -> `'smartindent'` -> `'cindent'`
- `CTRL-D` remove indentation in insert mode
- `CTRL-T` add indentation in insert mode

### Tabs and spaces

### Formatting comments

- `'formatoptions'` automatic formatting options
- `'comments'` defines what a comment looks like

## 31 - Exploiting the GUI

### The file browser

- `:browse edit` open GUI file picker for the command
- `'browsedir'` where to start the file browser

### Confirmation

- `:confirm edit foo.txt` pop up a GUI confirmation dialog

### Menu shortcuts

- `<A-*>` open a GUI menu using a keyboard

### Vim window position and size

- `:winpos` print the current Vim window position
- `'lines'` height of Vim window
- `'columns'` width of Vim window

### Various

- `gvim -f file.txt` block the shell
- `:gui` switch to gvim from terminal vim
- `vim -u anotherrc` vimrc file to use

## 32 - The undo tree

### Undo up to a file write

### Numbering changes

### Jumping around the tree

### Time travelling

