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

+ Google Chrome: Web browser
+ Xcode Cli Tools
+ [iTerm2](https://www.iterm2.com/)
+ [Color Picker](https://itunes.apple.com/us/app/color-picker/id641027709?l=en&mt=12)
+ [Kitematic](https://kitematic.com/): Docker GUI
+ [Sequel Pro](https://www.sequelpro.com/): MySQL client
+ [robo 3T](https://robomongo.org/): MongoDB client
+ [Postman](https://www.getpostman.com/): API client
+ [Amethyst](https://github.com/ianyh/Amethyst): Window manager
+ [Irvue](http://irvue.tumblr.com/): Wallpaper manager
+ [Slack](http://slack.com/): Team chat
+ [Zoom](http://zoom.us/) Video conference
+ [Tunnelblick](https://tunnelblick.net): VPN Client

## dot files

```bash
ln -s ~/code/dotfiles/vimrc  ~/.vimrc
ln -s ~/code/dotfiles/config ~/.config
```

## Homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install Packages

+ fish: shell
+ vim: text editor
+ irssi: irc client
+ git: version controller
+ ranger: file browser
+ highlight: syntax highlighter

## Google Chrome Plugins

+ LastPass
+ Hangouts
+ Zoom
+ React Developer tools
+ JSONView

## Italics in iTerm

https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

```bash
tic -x xterm-256color-italic.terminfo
tic -x tmux-256color.terminfo
```
