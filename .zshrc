# Allows to see the hidden files
setopt globdots

export HISTORY_IGNORE="(ls *|cd *|git *)"

source ~/.zplug/init.zsh

zplug "plugins/archlinux",			from:oh-my-zsh
zplug "plugins/colored-man-pages",	from:oh-my-zsh
zplug "plugins/command-not-found",	from:oh-my-zsh
zplug "plugins/copyfile",			from:oh-my-zsh
zplug "plugins/fzf",				from:oh-my-zsh
zplug "plugins/github",				from:oh-my-zsh
zplug "plugins/gh",					from:oh-my-zsh
zplug "plugins/history",			from:oh-my-zsh
zplug "plugins/emoji-clock",		from:oh-my-zsh
zplug "plugins/sudo",				from:oh-my-zsh

zplug "junegunn/fzf"
zplug "z-shell/zsh-tig-plugin"
zplug "ajeetdsouza/zoxide"
zplug "romkatv/powerlevel10k",					as:theme, depth:1 
zplug "zsh-users/zsh-syntax-highlighting", 		defer:2

zplug load

# Referencing files from ~/.zsh
source ~/.p10k.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/func.zsh
source ~/.zsh/history.zsh
source ~/.zsh/p10k.zsh
source ~/.zsh/menu.zsh
