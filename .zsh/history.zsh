# History configurations
export HISTSIZE=10000        # Number of commands to remember in the current session
export SAVEHIST=10000        # Number of commands to save in the history file

setopt APPEND_HISTORY        # Append commands to the history file, don't overwrite it
setopt INC_APPEND_HISTORY    # Add commands to the history file immediately, not when the shell exits
setopt SHARE_HISTORY         # Share history between all sessions
setopt HIST_IGNORE_ALL_DUPS  # Ignore duplicate commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks before recording entry
