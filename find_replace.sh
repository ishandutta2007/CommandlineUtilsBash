FROM=$1
TO=$2
find . -type f -name '*.*' -exec sed -i '' s/$FROM/$TO/ {} +
