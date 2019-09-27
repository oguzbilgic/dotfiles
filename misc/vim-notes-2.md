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
  * gf
  * 'path'
  * :find
  * CTRL-W_f
- The buffer list
  * :hide, 'hidden'
  * :buffers, :ls
  * :buffer, :sbuffer
  * :bnext, :bprevious
  * :bfirst, :blast
  * :bdelete

