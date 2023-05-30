
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=0
zstyle ':completion:*' original false
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jakob/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="ls --color=auto"
alias l="ls -lh"
alias ll="l -a"
alias install="paru -S"
alias remove="paru -R"
alias update="paru -Syu"

alias vpn-connect='nmcli --ask connection up "Uni-Bonn-VPN"'
alias vpn-disconnect='nmcli --ask connection down "Uni-Bonn-VPN"'      

alias vim=nvim

export EDITOR=nvim
export VISUAL=nvim

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd "^V" edit-command-line

export MOZ_ENABLE_WAYLAND=1

bindkey "^F" history-incremental-search-forward
bindkey "^R" history-incremental-search-backward

# beginning search with arrow keys and j/k
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

function cdl {
	cd $(latest)
}



alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
