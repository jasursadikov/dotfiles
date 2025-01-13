# Sourcing .profile, since it is not being sourced by default
[ -f ~/.profile ] && source ~/.profile

# Allows to see the hidden files
setopt globdots

# Sourcing zplug
source ~/.zplug/init.zsh

# Referencing plugins
zplug "plugins/archlinux",		from:oh-my-zsh
zplug "plugins/colored-man-pages",	from:oh-my-zsh
zplug "plugins/command-not-found",	from:oh-my-zsh
zplug "plugins/emoji-clock",		from:oh-my-zsh
zplug "plugins/history",		from:oh-my-zsh
zplug "plugins/sudo",			from:oh-my-zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug "ajeetdsouza/zoxide"		
zplug "romkatv/powerlevel10k",	as:theme, depth:1 
zplug "z-shell/zsh-tig-plugin"

# Loading plugins
zplug load

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

ZLE_RPROMPT_INDENT=0
source ~/.config/zsh/p10k-default.zsh
source ~/.config/zsh/p10k.zsh

# Referencing files from ~/.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/func.zsh
source ~/.config/zsh/menu.zsh
source ~/.config/zsh/keyboard.zsh
