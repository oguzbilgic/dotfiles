# dotfiles

my workstation configuration

## Fonts

- Robot Mono
- Fira Code
- Source Code Pro
- Office Code Pro (12pt, 125% vertical spacing)
- SF Mono (12pt, 130% vertical spacing)
  * Can be found in `/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/`

## Mac Apps

+ Google Chrome
+ Xcode Cli Tools
+ [iTerm2](https://www.iterm2.com/)
+ [Color Picker](https://itunes.apple.com/us/app/color-picker/id641027709?l=en&mt=12)
+ [Kitematic](https://kitematic.com/) for Docker containers
+ [Sequel Pro](https://www.sequelpro.com/) for MySQL
+ [robo 3T](https://robomongo.org/) for MongoDB
+ [Postman](https://www.getpostman.com/)
+ [Amethyst](https://github.com/ianyh/Amethyst) window manager
+ [Irvue](http://irvue.tumblr.com/)

## dot files

```bash
ln -s ~/code/dotfiles/vim       ~/.vim
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/tmux.conf ~/.tmux.conf
```

## Install Homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install Packages

+ fish
+ vim
+ irssi
+ git
+ tmux
+ ranger
+ highlight

## Italics in iTerm and Tmux

https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

```bash
tic -x xterm-256color-italic.terminfo
tic -x tmux-256color.terminfo
```
