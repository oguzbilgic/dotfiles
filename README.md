# dotfiles

my workstation configuration

## Mac Configuration

- Turn on 'Dock Hiding'
- Turn on 'Menu Bar Hiding'
- Enable 'Mouse right click'
- Enable 'Mouse Swipe between pages'
- Turn on 'Night Shift', bit warmer than default
- Increase 'mouse tracking speed', 5th level from the right
- Configure 'Menu Bar'
  * hide keyboard
  * show date
  * show sound icon

## Step by step configuration

Download and install Google Chrome, sign in and set as default.

Generate a new SSH Key for the device:

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Add the new ssh key to Github account, copy the key using:

```bash
pbcopy < ~/.ssh/id_rsa.pub

```
Install homebrew:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install git:

```bash
brew install git
```

Create `code/` and clone dot files repo: 

```bash
mkdir code
cd code/
git clone git@github.com:oguzbilgic/dotfiles.git
```

Symlink dot files:

```bash
ln -s ~/code/dotfiles/vimrc  ~/.vimrc
ln -s ~/code/dotfiles/emacs.el  ~/.emacs.el
ln -s ~/code/dotfiles/config ~/.config
ln -s ~/code/dotfiles/hushlogin ~/.hushlogin
```


Install packages and mac apps using Brewfile:

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

## Mac apps

These Mac apps will be installed using brew with the previous command.

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

```bash
tic -x ~/code/dotfiles/misc/xterm-256color.terminfo
tic -x ~/code/dotfiles/misc/tmux-256color.terminfo
```

## Fonts

These fonts are used in vim, emacs, and iTerm2:

- JetBrains Mono
  * 14pt, ExtraLight, 110, 130
  * https://www.jetbrains.com/lp/mono/
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
