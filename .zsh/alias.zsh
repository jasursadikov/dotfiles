# ----------------------------------
# |            Aliases             |
# ----------------------------------

alias ls='exa'
alias ff='fastfetch'
alias cat='bat'
alias grep='rg'
alias edit='micro'
alias calc='gnome-calculator &'
alias xorw='echo "$WAYLAND_DISPLAY $XDG_SESSION_TYPE"'
alias logout='gnome-session-quit --logout --no-prompt'

# Git
alias mud='~/Documents/personal/mud/mud.py'
alias wip='git add .;git commit -m "WIP";git push'

alias home-enable='cd ~;mv .git~ .git; cd --'
alias home-disable='cd ~;mv .git .git~; cd --'