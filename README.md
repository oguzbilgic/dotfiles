# dotfiles

my workstation configuration

## 1. Install Mac Apps

+ Google Chrome
+ Google Drive
+ DropBox
+ Xcode Cli Tools

## 2. Symlink dot files

```bash
ln -s ~/.bash bash
ln -s ~/.bash_profile bash_profile
ln -s ~/.bashrc bashrc
ln -s ~/.gitconfig config
ln -s ~/.vim vim
ln -s ~/.vimrc vimrc
```

## 3. Symlink dropbox folders

```bash
 ln -s ~/Dropbox/Code   ~/Code      
 ln -s ~/Dropbox/Design ~/Design    
```

## 4. Set Mac Preferences

+ Set computer name
+ Move dock to the right
+ Set dock
  - Finder
  - Google Chrome
+ Set Terminal Color Schema
+ Mac Finder Preferences
  - Sidebar shortcuts
  - New finder window location
+ Use _Source Code Pro_ (Powerline edition) font

## 5. Install Packages 

+ homebrew
  - bash-completion
+ tmux
+ irssi
+ mercurial
+ git
+ go
+ ruby
+ nodejs
+ rubygems
  - bundler
+ pip
  - virtualenv
