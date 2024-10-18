typeset -g -A key

key[F1]='^[OP'
key[F2]='^[OQ'
key[F3]='^[OR'
key[F4]='^[OS'
key[F5]='^[[15~'
key[F6]='^[[17~'
key[F7]='^[[18~'
key[F8]='^[[19~'
key[F9]='^[[20~'
key[F10]='^[[21~'
key[F11]='^[[23~'
key[F12]='^[[24~'
key[Backspace]='^?'
key[Insert]='^[[2~'
key[Home]='^[[H'
key[PageUp]='^[[5~'
key[Delete]='^[[3~'
key[End]='^[[F^[[F'
key[PageDown]='^[[6~'
key[Up]='^[[A'
key[Left]='^[[D'
key[Down]='^[[B'
key[Right]='^[[C'
key[Menu]='\t'
key[CtrlRight]='^[[1;5C'
key[CtrlLeft]='^[[1;5D'
key[ShiftRight]='^[[1;2C'
key[ShiftLeft]='^[[1;2D'

bindkey "${key[CtrlRight]}" forward-word
bindkey "${key[CtrlLeft]}" backward-word
bindkey "${key[Delete]}" delete-char
bindkey "${key[PageUp]}" up-line-or-history
bindkey "${key[PageDown]}" down-line-or-history
bindkey "${key[ShiftRight]}" forward-word
bindkey "${key[ShiftLeft]}" backward-word
