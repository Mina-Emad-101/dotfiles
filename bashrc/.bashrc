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
alias commitall='git add .; git commit'
alias projects='cd ~/Documents/Projects'
alias upwork='cd ~/Documents/Upwork'
alias learning='cd ~/Documents/Learning'
alias eficta='cd ~/Documents/Eficta'
alias seagate='cd /run/media/mina/My\ Passport/Seagate\ Backup\ Plus\ Drive/'
alias ar='php artisan'
PS1='[\u@\h \W]\$ '

export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox.desktop'

eval "$(starship init bash)"

export PATH="$PATH:$HOME/.config/composer/vendor/bin:$HOME/.local/scripts/"
export BEEP="/usr/share/sounds/freedesktop/stereo/bell.oga"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

bind '"\C-f":"tmux-sessionizer\n"'

export PATH="$PATH:$HOME/Documents/Eficta/zatca/Apps/"
export FATOORA_HOME="$HOME/Documents/Eficta/zatca/Apps"
export SDK_CONFIG="$HOME/Documents/Eficta/zatca/Configuration/config.json"
