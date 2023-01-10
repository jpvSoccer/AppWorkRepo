#!/bin/bash
# jvogel
# sample compile jason out of CLion

export SRCFILE=$1
export OUTFILE="${SRCFILE/.c/}"
export OUTASSEMFILE="${SRCFILE/.c/.s}"

if test -f "$SRCFILE"; then
    echo "$SRCFILE exists."
else echo "Usage: compile.sh <file.c>"
	exit
fi

if test -f "$OUTFILE"; then
    echo "Removing old binary $OUTFILE"
    rm $OUTFILE
fi

if test -f "$OUTASSEMFILE"; then
    echo "Removing old assembly file $OUTASSEMFILE"
    rm $OUTASSEMFILE
fi

# -Wall -g >> all warnings and save data for gdb debugging
gcc -Wall -g $(pkg-config --cflags json-c) -o $OUTFILE $SRCFILE $(pkg-config --libs json-c)
# create assembly file
#gcc -S $SRCFILE -ljson-c
#gcc -o $OUTFILE $SRCFILE -ljson-c -Wall -g

echo "run this file: $OUTFILE"

