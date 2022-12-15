#!/bin/bash
# jvogel
# sample gtk compile outside of CLion

export SRCFILE=$1
export OUTFILE="${SRCFILE/.c/}"

if test -f "$SRCFILE"; then
    echo "$SRCFILE exists."
else echo "Usage: compileGtkApp <file.c>"
	exit
fi

if test -f "$OUTFILE"; then
    echo "Removing old binary $OUTFILE"
    rm $OUTFILE
fi

echo "sourceFile: $SRCFILE"
echo "outFile: $OUTFILE"

#gcc $(pkg-config --cflags gtk4) -o $OUTFILE $SRCFILE $(pkg-config --libs gtk4)
gcc $(pkg-config --cflags gtk4) -o $OUTFILE $SRCFILE $(pkg-config --libs gtk4)


#./$OUTILE
