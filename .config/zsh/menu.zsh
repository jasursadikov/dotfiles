autoload -Uz compinit && compinit
autoload -Uz colors && colors

zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors \
    "di=1;34" "ln=1;36" "so=1;35" "pi=1;33" "ex=1;32" "bd=1;33;40" \
    "cd=1;33;40" "su=1;37;41" "sg=1;30;43" "tw=1;30;42" "ow=1;34;42" \
    "st=1;37;44" "mi=1;05;37;41" "or=1;31;41"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
