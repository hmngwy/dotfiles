if type fzf > /dev/null; then
  file="$HOME/.fzf/shell/key-bindings.zsh"
  [[ -f "$file" ]] && source "$file"
fi;
