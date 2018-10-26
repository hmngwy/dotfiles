let g:neoformat_enabled_yaml = []
let g:neoformat_enabled_python = ['black']
let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'stdin': 1,
            \ 'args': ['--skip-string-normalization', '-'],
            \ }
augroup fmt
  autocmd!
  autocmd BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | endtry
augroup END
nnoremap <silent> <leader>f :w<CR>
