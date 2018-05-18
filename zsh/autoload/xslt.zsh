xslt(){
  tmpfile=`mktemp`
  tmpfile=$tmpfile.html
  xslfile=/usr/local/share/xsl/xs3p.xsl
  if [ ! -f $xslfile ]; then
    git clone https://github.com/bitfehler/xs3p.git /usr/local/share/xsl;
  fi
  xsltproc $xslfile $1 > $tmpfile
  echo $tmpfile
  open -a Safari $tmpfile
}
