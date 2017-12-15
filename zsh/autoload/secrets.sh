for i in ~/.*-secrets; do
  [ -e $i/load.sh  ] && . $i/load.sh
done
