" Color Scheme
syntax enable
set background=dark
colorscheme solarized 
let g:solarized_termcolors=16

" Backspace is managed by vim-sensible, but I need it here too because some
" plugins depend on it during start up.
set backspace=indent,eol,start

" Enable line numbers.
set number

" Enable invisible characters.
"set list
"set listchars=eol:↲

" More natural splitting.
set splitbelow
set splitright

" Enable mouse. Great for resizing windows and keeping co-workers sane.
set mouse=a

" Disable swap files.
set noswapfile

" Write files as they are, don't mess with line endings etc.
set binary

" Disable the completion preview window.
set completeopt-=preview

" Make session files minimal.
set sessionoptions=blank,curdir,folds,help,tabpages,winsize

" Enable Tree Style Layout for netrw
let g:netrw_liststyle=3

" Set a default indent, but vim-sleuth should adjust it.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
