# Only allow running interactively.
[[ $- != *i* ]] && return

# Enable ls colors.
alias ls='ls --color=auto'

# Override default ls dir color.
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS

# Setting ruby paths.
export PATH="/home/skat/.gem/ruby/2.6.0/bin:$PATH"

# Allow copying to the clipboard.
alias xclip='xclip -selection clipboard'

# Terminal/vim reminders.
alias :q="echo \"You're not in vim, dumbass.\""
alias :q!="echo \"You're not in vim, dumbass.\""
alias :wq="echo \"You're not in vim, dumbass.\""

# Make a note.
alias note="vim ~/.note"

# Terminal prompt.
PS1="\[\033[0;36m\][\u@\h:\w] $ \[\033[0;0m\]"

# Compile C++/C executables for Windows.
alias compile="x86_64-w64-mingw32-g++"
alias compilec="x86_64-w64-mingw32-gcc"

# Start/kill multiscreen mode.
alias multiscreen="xrandr --output HDMI-1 --auto --right-of LVDS-1"
alias killmultiscreen="xrandr --auto"

# Start gdb quietly.
alias gdb="gdb -q"
