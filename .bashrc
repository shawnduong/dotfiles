# Only allow running interactively.
[[ $- != *i* ]] && return

# Terminal prompt.
PS1="\[\033[0;36m\][\u@\h:\w] $ \[\033[0;0m\]"

# Override default ls dir color.
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS

# Setting ruby paths.
export PATH="/home/skat/.gem/ruby/2.6.0/bin:$PATH"

# Enable ls colors by default.
alias ls='ls --color=auto'

# Allow copying to the clipboard.
alias xclip='xclip -selection clipboard'

# Start gdb quietly.
alias gdb="gdb -q"

# Disable "Erase is backspace" message and others.
alias reset="reset -Q"
