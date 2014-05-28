#!/bin/bash

DIR=`dirname $0`

for i in $DIR/svg/*.svg
do
  echo >&2 "Converting $i ..."
  inkscape -A "$DIR/`basename $i .svg`.pdf" "$i"
done

