# ~/.dotfiles/zsh/fns/consrc

consrc () {
  [[ -f "$1" ]] && source "$1"
}
