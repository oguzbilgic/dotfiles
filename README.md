# dotfiles

my workstation configuration

## Step by step configuration

Configure basic Mac settings. Refer to `Mac Configuration`

Using Safari, download and install Google Chrome, sign in and set as default.

Use default Terminal app to run the following commands.

Install homebrew:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install git:

```bash
brew install git
```

Generate a new SSH Key for the device:

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Add the new ssh key to Github account, copy the key using:

```bash
pbcopy < ~/.ssh/id_rsa.pub

```

Create `code/` and clone dot files repo: 

```bash
mkdir code
cd code/
git clone git@github.com:oguzbilgic/dotfiles.git
```

Install packages and mac apps using Brewfile:

```bash
brew bundle
```

Switch to iterm, and import iterm profile. Refer to `Configure Amethyst`

Symlink dot files:

```bash
ln -s ~/code/dotfiles/vimrc  ~/.vimrc
ln -s ~/code/dotfiles/emacs.el  ~/.emacs.el
ln -s ~/code/dotfiles/config ~/.config
ln -s ~/code/dotfiles/hushlogin ~/.hushlogin
```

Set fish as the default shell:

``` bash
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s `which fish`
```

Start amethyst and configure. Refer to `Configure Amethyst`

Install Irvue from Mac App Store.

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

## Configure Amethyst

- Enable 'Start Amethyst on login'
- Set 'Window margin' 15px
- Layouts: Tall, Tall Right and Full Screen
- Enable 'Swap windows using mouse'
- Enable 'Resize windows using mouse'

## Configure iTerm

- Download font
- Import profile `misc/iterm-Spacegray.json`
- Enable 'Terminal windows resize smoothly'
- Enable italics in iTerm:
  * https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be

```bash
tic -x ~/code/dotfiles/misc/xterm-256color.terminfo
tic -x ~/code/dotfiles/misc/tmux-256color.terminfo
```

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
