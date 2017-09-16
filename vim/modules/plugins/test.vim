let test#strategy = 'dispatch'

nnoremap <silent> <leader>p <C-\><C-n><CR>
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#python#runner = 'pytest'
