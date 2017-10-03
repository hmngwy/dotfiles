let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W #F',
      \'cwin' : '#I #W #F',
      \'w'    : '%a',
      \'x'    : '#W %R',
      \'y'    : '#H',
      \'z'     : '#(curl -s ipinfo.io/ip)',
      \'options': {'status-justify': 'left'}
\}

