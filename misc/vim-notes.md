# 1 - About The Manuals
- Jumping around
  * CTRL-]: jump to tag
  * CTRL-O: jump backwards

# 2 - The First Steps in Vim
- Inserting text
  * i, a, o
- Moving
  * h, j, k, l
- Deleting
  * x, d, J
- Undo / Redo
  * u, CTRL-r
- Getting out
  * ZZ, ZQ
- Finding help
  * CTRL-D

# 3 - Moving Around
- Horiz. movement
  * w, b, e
  * f, t
  * 0, ^, $
  * %
- Vert. movement
  * gg, G
  * %
  * H, M, L
- Scrolling
  * CTRL-U, CTRL-D: half screen
  * CTRL-E, CTRL-Y: line
  * CTRL-F, CTRL-B: whole screen
  * zt, zz, zb
- Search
  * / search
  * \ escape character
  * n, N next occurance
  * * search current word
  * \> end of word
  * \< start of word
  * ^ beginning of line
  * $ end of line
  * . any single char
- Marks
  * ma `a
  * '' last jump
  * '" last edit
  * '[, '] last change
- Jumps
  * CTRL-O CTRL-I

# 4 - Making Small Changes
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
- Replace
  * R
- Text objects
  * a{w,s,p}, i{w,s,p}
- Other ways
  * I, A, ~

# 5 - Set Your Settings
- Vimrc
- Mappings
- Plugins
- Filetypes
- Option Window
- Help files

# 6 - Using Syntax Highlighting
- Syntax
  * :syntax
- Colors
  * :colorscheme
  * :highlight

# 7 - Editing more than one file
- Args
  * :args
- Backups
- Registers
- Rename
- File Marks
  * m{A-Z}
  * '. last delete

# 8 - Splitting Windows
- Windows
  * :split, :vsplit, :new
  * CTRL-W {c, n, v, o}
  * CTRL-W {+, -, _, |, =}
  * CTRL-W {t, b}
  * :qa, :wa
- Tabs
  * :tabe, :tabo
  * :tab {command}
  * gt

# 9 - Using the GUI
- GUI
- Mouse
- Clipboard
  * "+ real clipboard
  * "* current selection

# 10 - Making Big Changes
- Macros
  * . repeats change
  * q{a-z} record macro
  * @{a-z} run macro
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
  * :g/pattern/command
- Visual block
  * CTRL-V
  * ~, u, U
  * >, <
- Read & Write
  * :read, :write filename
- Formatting & Case
  * gq reformat
  * gu, gU, g~
- External
  * :!{motion}{program}
  * :read !{command}
  * :write !{command}
  * CTRL-L

# 11 - Recovering from a crash

# 12 - Clever Tricks
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
