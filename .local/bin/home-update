#!/bin/bash

cd ~
source .zshrc
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