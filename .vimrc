"----------------------------------------------------------
" Global Settings
"----------------------------------------------------------

" Set colorscheme (default for fixing some commands)
colorscheme darkblue 

" backspace fixes
set bs=2

" Rebind <Leader> key
let mapleader = ","

" Highlight column 80
" set colorcolumn=80
" highlight ColorColumn ctermbg=233


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
set shiftround
set expandtab

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
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:%l/%L[%p%%]\ \ \ Col:\ %v
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

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" SPLITS
" bind Ctrl+<movement> keys to move around the windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" TABS
" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"map sort function to a key
vnoremap <Leader>s :sort<CR>

" Better indentation moving around in visual mode
vnoremap < <gv
vnoremap > >gv

" Disable vi-compatibility
set nocompatible

" Set encoding
set encoding=utf-8

" Explicitly tell Vim that the terminal supports 256 colors
set t_Co=256

"----------------------------------------------------------
" Helper Function
"----------------------------------------------------------

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

"----------------------------------------------------------
" Plugins Configuration
"----------------------------------------------------------

" Activate Pathogen Plugin for Vim
" call pathogen#infect()
" call pathogen#helptags() " generate helptags for everything in 'runtimepath'

" Settings for python-mode

" Settings for jedi-vim

" Settings for Powerline
" let g:Powerline_symbols = 'fancy'

" Settings for taglist 
" nnoremap <silent> <F8> :TlistToggle<CR>
" let Tlist_Auto_Open = 1 
" let Tlist_Exit_OnlyWindow = 1 

" Better navigating through omnicomplete option list
" set completeopt=longest,menuone
" function! OmniPopup(action)
"    if pumvisible()
"        if a:action == 'j'
"            return "\<C-N>"
"        elseif a:action == 'k'
"            return "\<C-P>"
"        endif
"    endif
"    return a:action
"endfunction

"inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
"inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" settings for Python folding
" set nofoldenable
