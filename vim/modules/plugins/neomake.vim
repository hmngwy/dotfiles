autocmd! BufEnter,BufWritePost * Neomake
let g:neomake_python_enabled_makers = ['pylint', 'pycodestyle', 'pydocstyle']
let g:neomake_python_pylint_tempfile_enabled = 0
let g:neomake_python_pydocstyle_tempfile_enabled = 0
let g:neomake_python_pycodestyle_tempfile_enabled = 0
