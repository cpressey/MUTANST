#!/bin/sh -x

mkdir -p bin
petcat -ic -w2 -o bin/mutanst.prg -- src/MUTANST.bas
x64 -iecdevice8 -device8 1 -fs8 disk
