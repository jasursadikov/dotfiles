# Allows to see the hidden files
setopt globdots

export HISTORY_IGNORE="(ls *|cd *|git *)"

source ~/.zplug/init.zsh

zplug "plugins/archlinux",			from:oh-my-zsh
zplug "plugins/colored-man-pages",	from:oh-my-zsh
zplug "plugins/command-not-found",	from:oh-my-zsh
zplug "plugins/fzf",				from:oh-my-zsh
zplug "plugins/git",				from:oh-my-zsh
zplug "plugins/git-lfs",			from:oh-my-zsh
zplug "plugins/github",				from:oh-my-zsh
zplug "plugins/gh",					from:oh-my-zsh
zplug "plugins/history",			from:oh-my-zsh
zplug "plugins/emoji",				from:oh-my-zsh
zplug "plugins/emoji-clock",		from:oh-my-zsh
zplug "plugins/python",				from:oh-my-zsh
zplug "plugins/sudo",				from:oh-my-zsh
zplug "plugins/tig",				from:oh-my-zsh
zplug "plugins/urltools",			from:oh-my-zsh
zplug "plugins/vscode",				from:oh-my-zsh
zplug "plugins/zoxide",				from:oh-my-zsh

zplug "romkatv/powerlevel10k",					as:theme, depth:1 
zplug "zsh-users/zsh-syntax-highlighting", 		defer:2

zplug load

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
bindkey '^I' complete-word

# Referencing files from ~/.zsh
source ~/.p10k.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/func.zsh
source ~/.zsh/history.zsh
source ~/.zsh/p10k.zsh
