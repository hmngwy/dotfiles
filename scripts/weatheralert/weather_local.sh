run_segment() {
  FILE=/tmp/weather_local_cache
  if test "`find $FILE -mmin +5`"; then
    $WORKON_HOME/.dotfiles/bin/python $HOME/.dotfiles/scripts/weatheralert/index.py "Makati, Metro Manila" $FILE
  fi
  cat $FILE
  return 0
}
