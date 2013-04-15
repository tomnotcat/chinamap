#!/bin/sh
files=`ls -1`
for i in $files; do
    if [ "$i" != "output" ] && [ "$i" != "convert.sh" ]; then
        svg2swf "$i" "output/${i%.*}.swf"
    fi
done
