"----------------------------------------------------------
" Global Settings
"----------------------------------------------------------

" colorscheme
colorscheme torte

" Set line numbers
set number

" Set free navigation
set virtualedit=all

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Tabstop are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" set the search scan to wrap lines
set wrapscan
        
" set visual bell - disable beeping
" also disable screen flashing
set vb
set t_vb=
" Set syntax highlighting
syntax on

" hide the mouse pointer when typing
set mousehide

" Command line in vim is 2 lines
set ch=2

" Set tabs into spaces
set expandtab

" Be smart when using tabs ;) <- wtf
set smarttab

set ai "auto indent
set si "smart indent
set wrap "Wrap lines

" Sets how many lines of history VIM has to remember
set history=700

" set 7 lines to the cursor - when moving vertically
set so=7

" Turn on the WiLd menu
set wildmenu

" always should the current position
set ruler

" Ignore complied files
set wildignore=*.o,*~,*.pyc

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" Blinking time for matching brackets(10th seconds)
set mat=2

" set utf8 as standard encoding
set encoding=utf8

" Always show the status line
set laststatus=2

" Return cursor to the last edit pos when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
"Remember info about open buffer on close
set viminfo^=%

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:%l/%L[%p%%]\ \ \ Col:\ %v
" CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Delete trailing white space on save for python/CoffeeScript
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"----------------------------------------------------------
" Mappings
"----------------------------------------------------------

" Disable Arrow keys in NORMAL mode
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

" Type jj to esc
imap jj <esc>

" Treat long lines as break lines
map j gj
map k gk


"----------------------------------------------------------
" Helper Function
"----------------------------------------------------------

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

