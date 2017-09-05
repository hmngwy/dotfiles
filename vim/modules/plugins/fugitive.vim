nnoremap <silent> <leader>ga :Git add %:p<CR><CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit -v -q<CR>
nnoremap <silent> <leader>gca :Gcommit --amend<CR><CR>
nnoremap <silent> <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR><CR>
nnoremap <silent> <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <silent> <leader>gp :Ggrep<leader>
nnoremap <silent> <leader>gm :Gmove<leader>
nnoremap <silent> <leader>gb :Git branch<leader>
nnoremap <silent> <leader>go :Git checkout<leader>
nnoremap <silent> <leader>gps :! git push<CR>
nnoremap <silent> <leader>gpl :! git pull<CR>
