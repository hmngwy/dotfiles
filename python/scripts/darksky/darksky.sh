FILE=/tmp/darksky_cache
if [ ! -f $FILE ] || test "`find $FILE -mmin +10`"; then
  $WORKON_HOME/.dotfiles/bin/python $HOME/.dotfiles/python/scripts/darksky/index.py "14.5833,120.9667" > $FILE
fi
output=$(cat $FILE)
echo $output
