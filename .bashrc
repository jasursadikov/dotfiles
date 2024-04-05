#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"
export EDITOR=code
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8