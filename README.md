# dotfiles
Command line util configuration files that I like to install computers I use

## Computer first-time setup

Follow these steps when you first set up a new machine.

### Add local vim config filenames to global gitignore

Add `.nvimrc` to the global ignore list for git.

```
echo ".nvimrc" >> ~/.gitignore
git config --global core.excludesFile '~/.gitignore'
```
### Install Fonts for Icons

The Nerdtree icons plugin uses a set of 'patched' fonts to show the icons.

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```
### Copy aliases file to the zsh custom directory

```
cp ~/dotfiles/zsh/aliases.zsh $ZSH_CUSTOM/
```

### Copy the KeyBindings dictionary file

To make Home and End keys work like they do on Windows, you will need to copy the key bindings file to the right location then reboot the laptop.

```bash
mkdir -p ~/Library/KeyBindings/ 
cp ~/dotfiles/Library/KeyBindings/DefaultKeyBinding.Dict ~/Library/KeyBindings/DefaultKeyBinding.Dict
```

Then restart your computer. Home and Ends keys should work now.


