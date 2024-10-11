export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND="fd"

export ZSH_COMPDUMP="${HOME}/.cache/zsh/.zcompdump"

# Python
export PYTHONHISTORY="$HOME/.cache/python/history"

# Android
export ANDROID_SDK_PATH="$HOME/.local/shared/Android/Sdk"

# History configurations
export HISTFILE="$HOME/.cache/zsh/history"
export HISTORY_IGNORE="(ls *|cd *|git *)"
export HISTSIZE=10000
export SAVEHIST=10000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
