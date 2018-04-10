"augroup fmt
"  autocmd!
"  autocmd BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | endtry
"augroup END
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
nnoremap <silent> <leader>f :w<CR>
