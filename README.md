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
