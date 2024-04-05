#!/bin/bash

cd ~

mv .git~ .git

if ! git status | grep -q "nothing to commit"; then
	notify-send "Configurations updated" "Backing up your home directory"
	git add .
	git commit -m "$(emoiji-clock) $(date +'%H:%M 📆 %Y-%m-%d')"
	git push
fi;

mv .git .git~