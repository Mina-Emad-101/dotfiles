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
alias projects='cd ~/Documents/Projects'
alias upwork='cd ~/Documents/Upwork'
alias learning='cd ~/Documents/Learning'
alias eficta='cd ~/Documents/Eficta'
alias seagate='cd /run/media/mina/My\ Passport/Seagate\ Backup\ Plus\ Drive/'
PS1='[\u@\h \W]\$ '

export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='alacritty'

eval "$(starship init bash)"

export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export BEEP="/usr/share/sounds/freedesktop/stereo/bell.oga"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
