FILE=/tmp/weather_local_cache
if [ ! -f $FILE ] || test "`find $FILE -mmin +5`"; then
  $WORKON_HOME/.dotfiles/bin/python $HOME/.dotfiles/python/scripts/weatheralert/index.py "Makati, Metro Manila" 30 $FILE
fi
output=$(cat $FILE)

#[[ "${output// }" ]] && echo "#[fg=colour15,bg=colour88,bold] $output"
