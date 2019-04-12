FROM=$1
TO=$2
find . -name '*'$FROM'*' -type f -exec bash -c 'mv "$1" "${1/\/$FROM/$TO/}"' -- {} \;
