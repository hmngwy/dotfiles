" Buffers as modern tabs c/o
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
:set hidden
nmap <C-t> :enew<cr>
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-q> :bp <BAR> bd #<CR>

" C-o to insert new line below
:nmap <C-o> <esc>o
:imap <C-o> <esc>o

" F2 to save
nnoremap <silent> <leader>s :w<CR>

" Show Errors
function! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
         " No location/quickfix list shown, open syntastic error location panel
         Errors
    else
        lclose
    endif
endfunction

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>

" F10 Toggle Paste Mode
:set pastetoggle=<F10>

" F12 Quit
:nnoremap <F12> :q<cr>
:inoremap <F12> :q<cr>
