" Buffers as modern tabs c/o
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
set hidden
nmap <C-t> :enew<cr>
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-q>bq :bp <BAR> bd #<CR>

" C-o to insert new line below
:nmap <C-o> <esc>o
:imap <C-o> <esc>o

" F10 Toggle Paste Mode
:set pastetoggle=<F10>

" F12 Quit
:nnoremap <F12> :wq<cr>
:inoremap <F12> :wq<cr>
