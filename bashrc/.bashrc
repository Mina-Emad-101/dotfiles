#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -al'
alias grep='grep --color=auto'
alias tmuxkill='tmux kill-server'
alias beep='paplay $BEEP'
alias commitall='git add .; git commit -m'
alias projects='cd Documents/Projects'
PS1='[\u@\h \W]\$ '

export EDITOR='nvim'
export VISUAL='nvim'
eval "$(starship init bash)"

export PATH="$PATH:~/.config/composer/vendor/bin"
export BEEP="/usr/share/sounds/freedesktop/stereo/bell.oga"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
