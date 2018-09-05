let g:neoformat_enabled_yaml = []
augroup fmt
  autocmd!
  autocmd BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | endtry
augroup END
nnoremap <silent> <leader>f :w<CR>
