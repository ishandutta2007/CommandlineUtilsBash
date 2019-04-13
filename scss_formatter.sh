if [ $# -eq 0 ]
  then
    $MYPATH=app
fi

MYPATH=$1

npm install -g scssfmt

scssfmt --recursive '$MYPATH/**/*.scss'
