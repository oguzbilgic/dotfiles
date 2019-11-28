# dotfiles

my workstation configuration

## Fonts

- Roboto Mono 
  * 14pt, Light, 110% vertical, 130% horizontal spacing
  * https://fonts.google.com/specimen/Roboto+Mono
- SF Mono 
  * 12pt, 130% horizontal spacing
  * Can be found in `/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/`
- Fira Code
- Source Code Pro
- Office Code Pro 
  * 12pt, 125% vertical spacing

## Install Mac apps

+ [Google Chrome](https://www.google.com/chrome/): Web browser
+ Xcode Cli Tools
+ [iTerm2](https://www.iterm2.com/): Terminal
+ [Amethyst](https://github.com/ianyh/Amethyst): Window manager
+ [Color Picker](https://itunes.apple.com/us/app/color-picker/id641027709?l=en&mt=12)
+ [Irvue](http://irvue.tumblr.com/): Wallpaper manager
+ [Kitematic](https://kitematic.com/): Docker GUI
+ [Sequel Pro](https://www.sequelpro.com/): MySQL client
+ [robo 3T](https://robomongo.org/): MongoDB client
+ [Postman](https://www.getpostman.com/): API client
+ [Slack](http://slack.com/): Team chat
+ [Zoom](http://zoom.us/) Video conference
+ [Tunnelblick](https://tunnelblick.net): VPN Client

## Generate SSH key

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Add the new ssh key to Github:

```bash
pbcopy < ~/.ssh/id_rsa.pub
```

## Symlink dot files

```bash
mkdir code
cd code/
git clone git@github.com:oguzbilgic/dotfiles.git
ln -s ~/code/dotfiles/vimrc  ~/.vimrc
ln -s ~/code/dotfiles/config ~/.config
ln -s ~/code/dotfiles/hushlogin ~/.hushlogin
```

## Install packages

Install homebrew:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install packages:

```bash
brew bundle
```

Set fish as the default shell:

``` bash
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s `which fish`
```

## Configure iTerm

Enable italics in iTerm:

https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

```bash
tic -x ~/code/dotfiles/misc/xterm-256color.terminfo
tic -x ~/code/dotfiles/misc/tmux-256color.terminfo
```
