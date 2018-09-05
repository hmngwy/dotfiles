if type fzf > /dev/null; then
  file="$HOME/.fzf/shell/key-bindings.zsh"
  [[ -f "$file" ]] && source "$file"
fi;

# Setting fd as the default source for fzf
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore *.pyc -g "" $(pwd)'
export FZF_DEFAULT_COMMAND='rg --files --hidden --smart-case --glob "!.git/*"'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

