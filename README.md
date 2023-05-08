# dotfiles
I got this guide and idea from https://www.atlassian.com/git/tutorials/dotfiles.
## Installation of dotfiles:
* Prior to the installation make sure you have committed the alias to your `.bashrc` or `.zshrc`:
```zsh
alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
```  
* And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:
```zsh
echo ".cfg" >> .gitignore
```
* Now clone your dotfiles into a bare repository in a "dot" folder of your $HOME:
```zsh
git clone --bare git@github.com:armytrong/dotfiles.git $HOME/.cfg.git
```
* Define the alias in the current shell scope:
```zsh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
* Checkout the actual content from the bare repository:
```zsh
config checkout
```

For further help see the afore mentioned website.
