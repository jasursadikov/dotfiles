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

plugins=(archlinux sudo git python history emoji command-not-found zoxide zsh-syntax-highlighting zsh-autosuggestions gh vscode github emoji-clock fzf)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR=code

# ----------------------------------
# |            Aliases             |
# ----------------------------------

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias calc='gnome-calculator &'
alias logout='gnome-session-quit --logout --no-prompt'
alias xorw='echo "$WAYLAND_DISPLAY $XDG_SESSION_TYPE"'

# Git
alias mud='~/repos/jasursadikov/mud/mud.py'
alias mudu='mud fetch > /dev/null;mud -d git pull > /dev/null;mud status'
alias wip='git add .;git commit -m "WIP";git push'

# ---------------------------------------------
# |            Passwords and PATs             |
# ---------------------------------------------

export OPENAI_KEY=$(secret-tool lookup service openai user jsd)

# -----------------------------------------------------
# |            Powerline 10k Customization            |
# -----------------------------------------------------

BACKGROUND_COLOR=16

function prompt_emojiclock() { p10k segment -f 2 -b $BACKGROUND_COLOR -t "$(emoji-clock)"; }

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(${POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS[@]} 'emojiclock')

# Coloring
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=4
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=$BACKGROUND_COLOR
typeset -g POWERLEVEL9K_DIR_BACKGROUND=$BACKGROUND_COLOR
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR_FOREGROUND=4
typeset -g POWERLEVEL9K_PROMPT_ELEMENT_BACKGROUND=$BACKGROUND_COLOR

# Directories
typeset -g POWERLEVEL9K_HOME_ICON='🛖'
typeset -g POWERLEVEL9K_HOME_SUB_ICON='📁'
typeset -g POWERLEVEL9K_LOCK_ICON='🔒'
typeset -g POWERLEVEL9K_FOLDER_ICON='📂'
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_VISUAL_IDENTIFIER_EXPANSION="⌛"
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=$BACKGROUND_COLOR

typeset -g POWERLEVEL9K_STATUS_OK=true
typeset -g POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION='✅'
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=2
typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND=$BACKGROUND_COLOR

typeset -g POWERLEVEL9K_STATUS_OK_PIPE=$POWERLEVEL9K_STATUS_OK
typeset -g POWERLEVEL9K_STATUS_OK_PIPE_VISUAL_IDENTIFIER_EXPANSION=$POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION
typeset -g POWERLEVEL9K_STATUS_OK_PIPE_FOREGROUND=$POWERLEVEL9K_STATUS_OK_FOREGROUND
typeset -g POWERLEVEL9K_STATUS_OK_PIPE_BACKGROUND=$POWERLEVEL9K_STATUS_OK_BACKGROUND

typeset -g POWERLEVEL9K_STATUS_ERROR=true
typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION='❌'
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=1
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=$BACKGROUND_COLOR
typeset -g POWERLEVEL9K_STATUS_VERBOSE_SIGNAME=false

typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL=$POWERLEVEL9K_STATUS_ERROR
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_VISUAL_IDENTIFIER_EXPANSION=$POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=$POWERLEVEL9K_STATUS_ERROR_FOREGROUND
typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_BACKGROUND=$POWERLEVEL9K_STATUS_ERROR_BACKGROUND

typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE=$POWERLEVEL9K_STATUS_ERROR
typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_VISUAL_IDENTIFIER_EXPANSION=$POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION
typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_FOREGROUND=$POWERLEVEL9K_STATUS_ERROR_FOREGROUND
typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_BACKGROUND=$POWERLEVEL9K_STATUS_ERROR_BACKGROUND