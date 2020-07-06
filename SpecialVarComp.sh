#! /bin/bash

# Author : Debabrata Panda
# Date   : 25/June/2020
# Purpose: Compare $* and $@
# Param  : one two "three four"

echo "Using \"\$*\":"
for a in "$*"; do
    echo $a;
done

echo -e "\nUsing \$*:"
for a in $*; do
    echo $a;
done

echo -e "\nUsing \"\$@\":"
for a in "$@"; do
    echo $a;
done

echo -e "\nUsing \$@:"
for a in $@; do
    echo $a;
done
