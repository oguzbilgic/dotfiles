# 20 - Typing command-line commands quickly
- Command line editing
  * S-Left, S-Right one word 
  * CTRL-B begin of command line
  * CTRL-E end of command line
  * CTRL-W delete word
  * CTRL-U remove all
- Command line completion
  * CTRL-D show matches
- Command line history
  * :history
- Command line window
  * q:

# 21 - Go away and come back
- Suspend and resume
  * CTRL-Z or :suspend
- Executing shell commands
  * :!{command} execute
  * :r[ead] !{command} execute and read to buffer
  * :w[write] !{command}
  * :[range]!{command} filter text through command
  * :shell start shell
- Remembering information; viminfo
  * '0 go to last edited file
  * :oldfiles recently edited files
  * :browse {command}
- Sessions
  * :mksession name.vim save session
  * :source name.vim open session
  * vim -S name.vim
- Views
  * :mkview store view options for current file
  * :loadview
- Modelines
  * file specific vim options

# 22 - Finding the file to edit
- The file browser
  * :edit .
  * netrw: o, v, p, P, t
  * :Explore, :Sexplore
  * :NetrwSettings
- The current directory
  * :pwd
  * :cd, :lcd, :tcd
- Finding a file
  * gf opens the file under cursor
  * 'path'
  * :find
  * CTRL-W_f opens a window for the file under cursor
- The buffer list
  * :hide, 'hidden'
  * :buffers, :ls lists open buffers
  * :buffer, :sbuffer
  * :bnext, :bprevious
  * :bfirst, :blast
  * :bdelete deletes buffer

# 23 - Editing other files
- DOS, Mac and Unix files
  * 'fileformat'
- Files on the internet
  * ftp, rcp, scp and http
- Encryption
  * vim -x secret.txt
  * 'key'
- Binary files
  * vim -b datafile
  * 'binary'
  * g_CTRL-g byte position
  * 123go goes to 123th byte
- Compressed files
  * .Z .gz .bz2

# 24 - Inserting quickly
- Making corrections
  * CTRL-W delete whole word
  * CTRL-U delete whole line
  * <S-left> <S-right> jump words
- Showing matches
  * 'showmatch' show match of ( { [
  * 'matchtime' duration of highlight
- Completion
  * CTRL-P, CTRL-N prev & next complete match
  * 'complete' search order
  * 'infercase' ignore case
  * CTRL-X CTRL-F file names
  * CTRL-X CTRL-L whole lines
  * CTRL-X CTRL-V Vim command line
  * CTRL-X CTRL-O omni complete
- Repeating an insert
  * CTRL-A insert last word typed
  * CTRL-@ insert last word typed and exit
- Copying from another line
  * CTRL-Y insert the character above the cursor
  * CTRL-E insert the character below the cursor
- Inserting a register
  * CTRL-R {register} insert the contents of the register
  * CTRL-R CTRL-R {register} insert literal contents
- Abbreviations
  * :iabbrev {short} {long} add insert mode abbreviation
  * :cabbrev {short} {long} add command line abbreviation
  * :abbreviate list the abbreviations
  * :unabbreviate delete abbreviations
  * :abclear delete all abbreviations
- Entering special characters
  * CTRL-V {char} insert the next character literally
- Digraphs
  * CTRL-K insert digraph
  * :digraphs list digraphs
  * :digraph define a digraph
- Normal mode commands
  * CTRL-O {command} execute command from insert mode
