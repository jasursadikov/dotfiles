# ----------------------------------
# |            Aliases             |
# ----------------------------------

alias ls='exa --group-directories-first --icons=auto --color=auto --no-quotes --classify=auto'
alias ff='fastfetch'
alias cat='bat'
alias grep='rg'
alias edit='micro'
alias calc='gnome-calculator &'
alias xorw='echo "$WAYLAND_DISPLAY $XDG_SESSION_TYPE"'
alias mud='~/Documents/personal/mud/mud.sh'

logout() {
	gnome-session-quit --logout --no-prompt	
}

home-enable() {
	cd ~
	mv .git~ .git 
	cd --
}

home-disable() {
	cd ~
	mv .git .git~
	cd --
}

home-update() {
	cd ~
	if [ -d ".git~" ]; then
		mv .git~ .git
	fi

	clock=$(emoji-clock)
	
	if ! git status | grep -q "nothing to commit"; then
		notify-send "Home directory updated" "Backing up your home directory"
		git add .
		git commit -m "$clock $(date +'%H:%M 📆 %Y-%m-%d')"
		git push
	fi
	
	mv .git .git~
	cd --
}

wip() {
	git add .
	git commit -m "wip $emoji-clock $(date +'%H:%M 📆 %Y-%m-%d')$"
	git push
}

copyclip() {
    if [ -f "$1" ]; then
		xsel --clipboard < figma.txt
        echo "Content of \e[32m$1\e[0m is copied to the clipboard 📋"
    else
        echo "\e[31mFile not found:\e[0m $1"
    fi
}

newpass() {
	PASS_LENGTH=20
	tr -dc 'A-Za-z0-9@#$%^&*()-_+=' </dev/urandom | head -c $PASS_LENGTH | xclip -selection clipboard	
	echo 'New password 🔑 is created and placed in your clipboard 📋'
}
