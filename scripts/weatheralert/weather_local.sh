run_segment() {
  FILE=/tmp/weather_local_cache
  OLDTIME=300
  CURTIME=$(date +%s)
  FILETIME=$(stat $FILE -c %Y)
  TIMEDIFF=$(expr $CURTIME - $FILETIME)
  # only fetch if our cache is old
  if [ $TIMEDIFF -gt $OLDTIME ] || [ ! -f $FILE ]; then
    echo "File is older, do stuff here"
    $WORKON_HOME/.dotfiles/bin/python $HOME/.dotfiles/scripts/weatheralert/index.py "Marikina, Metro Manila" $FILE
  fi
  cat $FILE
	return 0
}

