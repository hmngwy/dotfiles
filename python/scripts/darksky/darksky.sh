FILE=/tmp/darksky_cache
if [ ! -f $FILE ] || test "`find $FILE -mmin +5`"; then
  $WORKON_HOME/.dotfiles/bin/python $HOME/.dotfiles/python/scripts/darksky/index.py
fi
#output=$(cat $FILE)

#[[ "${output// }" ]] && echo "#[fg=colour15,bg=colour88,bold] $output"
