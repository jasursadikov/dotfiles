dotfiles() {
    if [ "$#" -ne 1 ]; then
        echo "Error: This function requires exactly 1 argument."
        echo "Usage: dotfiles {enable|disable|update}"
        return 1
    fi

    case "$1" in
        enable)
            cd ~ 
            mv .git~ .git
            cd - > /dev/null
            git status
            ;;
        disable)
            cd ~
            mv .git .git~
            cd - > /dev/null
            ;;
        status)
            cd ~ 
            mv .git~ .git
            git status
            mv .git .git~
            cd - > /dev/null
            ;;
        update)
            cd ~
            if [ -d ".git~" ]; then
                mv .git~ .git
            fi

            if ! git status | grep -q "nothing to commit"; then
                git status
                git add .
                git commit -m "$(emoji-clock) $(date +'%H:%M 📆 %d-%m-%Y')"
                git push
            else
                echo "Nothing to update"
            fi

            mv .git .git~
            cd - > /dev/null
            ;;
        *)
            echo "Invalid argument: $1"
            echo "Usage: dotfiles {enable|disable|update}"
            return 1
            ;;
    esac
}

logout() {
	gnome-session-quit --logout --no-prompt	
}

wip() {
	git add .
	git commit -m "wip $(emoji-clock) $(date +'%H:%M 📆 %d-%m-%Y')"
	git push
}

newpass() {
	PASS_LENGTH=20
	tr -dc "A-Za-z0-9@#$%^&*()-_+=" </dev/urandom | head -c $PASS_LENGTH | xclip -selection clipboard	
	echo "New password 🔑 is created and placed in your clipboard 📋"
}

unity() {
    local path="$HOME/.cache/Unity/$UNITY_VERSION/Editor/Unity"

    if [[ -e "$path" ]]; then
        "$path" "$1" > /dev/null & disown
    else
        echo "❌ Unity $UNITY_VERSION does not exist."
    fi
}

# Broot file inspector
.zle_insert-path-broot () {
  echoti rmkx
  local locations=(${(f)"$(
    <$TTY broot --color yes --conf "${HOME}/.config/broot/select.hjson;${HOME}/.config/broot/conf.hjson"
  )"})
  locations=(${(q-)locations})
  LBUFFER+="$locations "
}

zle -N .zle_insert-path-broot
