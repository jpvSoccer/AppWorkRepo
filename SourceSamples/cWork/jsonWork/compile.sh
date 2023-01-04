#!/bin/bash
# jvogel
# sample compile jason out of CLion

export SRCFILE=$1
export OUTFILE="${SRCFILE/.c/}"

if test -f "$SRCFILE"; then
    echo "$SRCFILE exists."
else echo "Usage: compile.sh <file.c>"
	exit
fi

if test -f "$OUTFILE"; then
    echo "Removing old binary $OUTFILE"
    rm $OUTFILE
fi

gcc $(pkg-config --cflags json-c) -o $OUTFILE $SRCFILE $(pkg-config --libs json-c)
#gcc -o $OUTFILE $SRCFILE -ljson-c 

echo "run this file: $OUTFILE"

