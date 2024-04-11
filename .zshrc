if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# NPM
PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"
PATH="$HOME/bin:$PATH"

export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND='fd'
export ZSH="$HOME/.oh-my-zsh"

plugins=(archlinux sudo git git-lfs tig dotnet github gh python history emoji command-not-found zoxide zsh-syntax-highlighting zsh-autosuggestions azure vscode emoji-clock fzf)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

export EDITOR=code

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -s ~/.zsh/alias.zsh ]] && source ~/.zsh/alias.zsh
[[ -s ~/.zsh/p10k.zsh ]] && source ~/.zsh/p10k.zsh