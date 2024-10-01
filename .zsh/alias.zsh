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

logout(){
	gnome-session-quit --logout --no-prompt	
}

home-enable(){
	cd ~
	mv .git~ .git 
	cd --
}

home-disable(){
	cd ~
	mv .git .git~
	 cd --
}

home-update(){
	cd ~
	mv .git~ .git
	
	(( minutes = $(date '+%M') + 15 ))
	(( hour = $(date '+%I') + minutes / 60 ))
	(( minutes %= 60 )); (( hour %= 12 ))
	
	case $hour in
	   0) clock="🕛"; [ $minutes -ge 30 ] && clock="🕧";;
	   1) clock="🕐"; [ $minutes -ge 30 ] && clock="🕜";;
	   2) clock="🕑"; [ $minutes -ge 30 ] && clock="🕝";;
	   3) clock="🕒"; [ $minutes -ge 30 ] && clock="🕞";;
	   4) clock="🕓"; [ $minutes -ge 30 ] && clock="🕟";;
	   5) clock="🕔"; [ $minutes -ge 30 ] && clock="🕠";;
	   6) clock="🕕"; [ $minutes -ge 30 ] && clock="🕡";;
	   7) clock="🕖"; [ $minutes -ge 30 ] && clock="🕢";;
	   8) clock="🕗"; [ $minutes -ge 30 ] && clock="🕣";;
	   9) clock="🕘"; [ $minutes -ge 30 ] && clock="🕤";;
	  10) clock="🕙"; [ $minutes -ge 30 ] && clock="🕥";;
	  11) clock="🕚"; [ $minutes -ge 30 ] && clock="🕦";;
	   *) clock="⌛";;
	esac
	
	if ! git status | grep -q "nothing to commit"; then
		notify-send "Configurations updated" "Backing up your home directory"
		git add .
		git commit -m "$clock $(date +'%H:%M 📆 %Y-%m-%d')"
		git push
	fi;
	
	mv .git .git~
	
	exit	
}

wip(){
	git add .
	git commit -m "WIP"
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
