augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
nnoremap <silent> <leader>f :w<CR>
