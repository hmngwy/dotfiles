publish () {
  mv $1 "$(date +%Y-%m-%d) $1"
}

edit () {
  editor $(ls | grep $1)
}
