nnoremap <silent> <leader>ga :Git add %:p<CR><CR>
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit -v -q<CR>
<<<<<<< HEAD
nnoremap <silent> <leader>gca :Gcommit --amend<CR><CR>
=======
>>>>>>> e055ca959001da83f3e6023725cc8fe73e44c655
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
<<<<<<< HEAD
nnoremap <silent> <leader>gps :! git push<CR>
nnoremap <silent> <leader>gpl :! git pull<CR>
=======
nnoremap <silent> <leader>gps :Dispatch! git push<CR>
nnoremap <silent> <leader>gpl :Dispatch! git pull<CR>
>>>>>>> e055ca959001da83f3e6023725cc8fe73e44c655
