# ----------------------------------
# |            Aliases             |
# ----------------------------------

alias ls='exa'
alias cat='bat'
alias grep='rg'
alias calc='gnome-calculator &'
alias logout='gnome-session-quit --logout --no-prompt'
alias xorw='echo "$WAYLAND_DISPLAY $XDG_SESSION_TYPE"'

# Git
alias mud='~/Documents/personal/mud/mud.py'
alias mudu='mud fetch > /dev/null;mud -d git pull > /dev/null;mud status'
alias wip='git add .;git commit -m "WIP";git push'

alias home-enable='cd ~;mv .git~ .git; cd --'
alias home-disable='cd ~;mv .git .git~; cd --'
alias home-update='home-update;home-enable'
alias home-update-once='home-update;' 