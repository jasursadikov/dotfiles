# Dot files repo management
dotfiles-enable() {
	cd ~
	mv .git~ .git 
	cd - > /dev/null
	git status
}

dotfiles-disable() {
	cd ~
	mv .git .git~
	cd - > /dev/null
}

dotfiles-update() {
	cd ~
	if [ -d ".git~" ]; then
		mv .git~ .git
	fi

	if ! git status | grep -q "nothing to commit"; then
		git status
		git add .
		git commit -m "$(emoji-clock) $(date +'%H:%M 📆 %Y-%m-%d')"
		git push
	elif
		echo "Nothing to update"
	fi
	
	mv .git .git~
	cd - > /dev/null
}


# Tools
logout() {
	gnome-session-quit --logout --no-prompt	
}


# Utilities
wip() {
	git add .
	git commit -m "wip $(emoji-clock) $(date +'%H:%M 📆 %Y-%m-%d')"
	git push
}

newpass() {
	PASS_LENGTH=20
	tr -dc "A-Za-z0-9@#$%^&*()-_+=" </dev/urandom | head -c $PASS_LENGTH | xclip -selection clipboard	
	echo "New password 🔑 is created and placed in your clipboard 📋"
}
