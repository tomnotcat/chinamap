#!/bin/sh
files=`ls -1`
for i in $files; do
    if [ "$i" != "output" ] && [ "$i" != "convert.sh" ] && \
        [ "$i" != "china-old.svg" ] && [ "$i" != "china-new.svg" ] \
        && [ "$i" != "svg2swf-0.5.win32.exe.zip" ]; then
        svg2swf "$i" "output/${i%.*}.swf"
    fi
done
