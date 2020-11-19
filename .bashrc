# Only allow running interactively.
[[ $- != *i* ]] && return

# Terminal prompt.
PS1="\[\033[0;36m\][\u@\h:\w] $ \[\033[0;0m\]"

# Override default ls dir color.
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS

# Setting ruby paths.
export PATH="/home/skat/.gem/ruby/2.7.0/bin:$PATH"

# Setting composer paths.
export PATH="/home/skat/.config/composer/vendor/bin:$PATH"

# Terminal/vim reminders.
alias :q="echo \"You're not in vim, dumbass.\""
alias :q!="echo \"You're not in vim, dumbass.\""
alias :wq="echo \"You're not in vim, dumbass.\""

# Compile C++/C executables for Windows.
alias compile="x86_64-w64-mingw32-g++"
alias compilec="x86_64-w64-mingw32-gcc"

# Start gdb quietly.
alias gdb="gdb -q"

# Clean LaTeX files after compilation.
alias latexclean="rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.nav *.out *.snm *.toc 2>/dev/null"

# Enable ls colors by default.
alias ls='ls --color=auto --group-directories-first'

# Make a note.
alias note="vim ~/.note"

# Print notes.
alias notes="cat ~/.note"

# Disable "Erase is backspace" message and others.
alias reset="reset -Q"

# Allow copying to the clipboard.
alias xclip="xclip -selection clipboard"

# Disable terminal beep.
xset b off 2>/dev/null

# Get rid of annoying __pycache__ at the expense of a little speed.
export PYTHONDONTWRITEBYTECODE=1

# Tree without escapes.
alias tree="tree -N"

# Concatenate videos in a playlist.txt to output.mp4.
alias vidcombine="ffmpeg -f concat -safe 0 -i playlist.txt -c copy output.mp4"

# ASLR on/off
alias aslroff="echo 0 | sudo tee /proc/sys/kernel/randomize_va_space"
alias aslron="echo 2 | sudo tee /proc/sys/kernel/randomize_va_space"
