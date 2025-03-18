export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND="fd"

# Android
export ANDROID_SDK_PATH="$HOME/.local/share/Android/Sdk"
export PATH="$PATH:$ANDROID_SDK_PATH/platform-tools"
export PATH="$PATH:$ANDROID_SDK_PATH/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_SDK_PATH/emulator"

# .NET
export PATH="$PATH:$HOME/.dotnet/tools"

export ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump"

# Python
export PYTHONHISTORY="$HOME/.cache/python/history"

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
