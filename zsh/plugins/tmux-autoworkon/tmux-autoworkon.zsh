# Exporting any saved tmux env so that zsh can access it
for var in $(tmux show-environment | grep "TMUX_VENV"); do
  eval "export $var";
done;

# If pyvenv is set for this window, new panes will activate it
VENV_VAR="TMUX_VENV$(tmux display-message -p '#I')"
VENV_PATH=(${(P)VENV_VAR})
if [[ -n "$VENV_PATH" ]]; then
  workon `basename $VENV_PATH`
fi
