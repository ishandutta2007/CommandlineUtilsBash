
if [ $# -eq 0 ]
  then
    MYPATH="."
fi

MYPATH=$1

find "$MYPATH" -name *.html > /tmp/patterns

for p in $(cat /tmp/patterns); do
    tidy $p >> /tmp/temphtml
    cat /tmp/temphtml >> $p
done

