alias tmux='tmux -2'
alias reload='source ~/.zshrc'
alias fu=cmdfu
alias termcolors='for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done'
alias wan='curl ipinfo.io/ip'
alias irssi='TERM=screen-256color irssi'
alias vim=nvim
alias cat=ccat
alias h='howdoi -n 3'
alias l='ls -la'
alias mkpassword="python -c 'import sys,uuid; sys.stdout.write(uuid.uuid4().hex)' | pbcopy && pbpaste && echo"
alias pvim='pipenv run nvim'
alias serve='python3 -m http.server'
fix_mosh_server() {
  local fw='/usr/libexec/ApplicationFirewall/socketfilterfw'
  local mosh_sym="$(which mosh-server)"
  local mosh_abs="$(greadlink -f $mosh_sym)"

  sudo "$fw" --setglobalstate off
  sudo "$fw" --add "$mosh_sym"
  sudo "$fw" --unblockapp "$mosh_sym"
  sudo "$fw" --add "$mosh_abs"
  sudo "$fw" --unblockapp "$mosh_abs"
  sudo "$fw" --setglobalstate on
}
