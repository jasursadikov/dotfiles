if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZLE_RPROMPT_INDENT=0

setopt globdots

export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND='fd'
export ZSH="$HOME/.oh-my-zsh"

plugins=(archlinux sudo git git-lfs tig dotnet github gh python history emoji command-not-found zoxide zsh-syntax-highlighting zsh-autosuggestions vscode emoji-clock fzf)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Referencing files from ~/.zsh
[[ -s ~/.zsh/alias.zsh ]] && source ~/.zsh/alias.zsh
[[ -s ~/.zsh/func.zsh ]] && source ~/.zsh/func.zsh
[[ -s ~/.zsh/p10k.zsh ]] && source ~/.zsh/p10k.zsh
