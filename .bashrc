# Only allow running interactively.
[[ $- != *i* ]] && return

# Override default ls dir color.
LS_COLORS=$LS_COLORS:'di=1;36:'; export LS_COLORS

# Set the path.
PATH="$PATH:/home/skat/.local/share/gem/ruby/3.0.0/bin"; export PATH
PATH="$PATH:/home/skat/sh/scripts"; export PATH

# Disable Python cache creation.
export PYTHONDONTWRITEBYTECODE=1

# Set the terminal.
export TERMINAL="st"

# Start gdb quietly.
alias gdb="gdb -q"

# Run grep with colors.
alias grep="grep --color"

# Remove residual LaTeX files.
alias latexclean="rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.nav *.out *.snm *.toc 2>/dev/null"

# Enable ls colors by default.
alias ls='ls --color=auto --group-directories-first'

# Make a note.
alias note="vim ~/.note"

# Read notes.
alias notes="cat ~/.note"

# Disable "Erase is backspace" message and others.
alias reset="reset -Q"

# Scrub EXIF data.
alias scrub="exiftool -all="

# Allow copying to the clipboard.
alias xclip="xclip -selection clipboard"

# Terminal prompt.
PS1="\[\033[0;36m\][\u@\h:\w] $ \[\033[0;0m\]"
