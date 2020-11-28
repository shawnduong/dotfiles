" Map C-L/C-R to switch tabs.
map <C-Left> :tabp <CR>
map <C-Right> :tabn <CR>
map <C-h> :tabp <CR>
map <C-l> :tabn <CR>

" Disable indentation.
filetype indent off
filetype plugin indent off
set indentexpr=
set noautoindent
set nocindent
set nosmartindent

" Enable syntax highlighting.
syntax on

" Enable line numbering.
set number

" Disable intro message.
set shortmess=I

" Set tab/shift width to 4 spaces.
set tabstop=4
set shiftwidth=4

" Prevent words from being split across 2 lines.
set linebreak

" Try to display as much text as possible.
set display+=lastline

" Prevent conflicts with system keybinds.
set timeout timeoutlen=100 ttimeoutlen=100

" Don't wrap lines by default.
set nowrap

" Markdown settings.
autocmd Filetype markdown set wrap
autocmd Filetype markdown set spell

" LaTeX settings.
autocmd Filetype tex set wrap
autocmd Filetype tex set spell
autocmd Filetype tex autocmd BufWritePost * !pdflatex "%"

" Disable F1 help menu.
map <F1> <Esc>
imap <F1> <Esc>
