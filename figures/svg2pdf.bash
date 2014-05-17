#!/bin/bash

DIR=`dirname $0`

for i in $DIR/*.svg
do
  inkscape -A "$DIR/`basename $i .svg`.pdf" "$i"
done

