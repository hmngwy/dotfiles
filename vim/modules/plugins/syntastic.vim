let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers=['eslint', 'standard']
let g:syntastic_python_checkers=['flake8']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol = '>'
let g:syntastic_enable_balloons=1
let g:syntastic_loc_list_height = 5
