# Allows to see the hidden files
setopt globdots

# Sourcing zplug
source ~/.zplug/init.zsh

# Referencing plugins
zplug "plugins/archlinux",			from:oh-my-zsh
zplug "plugins/colored-man-pages",	from:oh-my-zsh
zplug "plugins/command-not-found",	from:oh-my-zsh
zplug "plugins/copyfile",			from:oh-my-zsh
zplug "plugins/github",				from:oh-my-zsh
zplug "plugins/gh",					from:oh-my-zsh
zplug "plugins/history",			from:oh-my-zsh
zplug "plugins/emoji-clock",		from:oh-my-zsh
zplug "plugins/sudo",				from:oh-my-zsh

zplug "junegunn/fzf"
zplug "ajeetdsouza/zoxide"
zplug "romkatv/powerlevel10k",				as:theme, depth:1 
zplug "z-shell/zsh-tig-plugin"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

# Loading plugins
zplug load

# Referencing p10k.zsh
if [ -f "~/.zsh/p10k-default.zsh" ]; then
	echo ".p10k-default.zsh file not found. Create default file by running 'p10k configure' and then move it to ~/.zsh/p10k-default.zshrc."
else
	ZLE_RPROMPT_INDENT=0
	source ~/.zsh/p10k-default.zsh
	source ~/.zsh/p10k.zsh
fi

# Referencing files from ~/.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/func.zsh
source ~/.zsh/menu.zsh
source ~/.zsh/keyboard.zsh
