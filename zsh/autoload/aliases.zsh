setopt no_complete_aliases

gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip2 "$@"
}

publish () {
  mv $1 "$(date +%Y-%m-%d) $1"
}

edit () {
  editor $(ls | grep $1)
}

alias tmux='tmux -2'
alias reload='source ~/.zshrc'
alias fu=cmdfu
alias show_palette='for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done'
alias wan='curl ipinfo.io/ip'
alias irssi='TERM=screen-256color irssi'
alias vim=nvim
alias cat=ccat
alias h='howdoi -n 3'
alias gs=gst
