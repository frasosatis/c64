#!/bin/bash
SRCFILE=hello
prog8c -target c64 $SRCFILE.p8 -out bin/
if [[ $? -eq 0 ]];
then
    x64sc bin/$SRCFILE.prg
fi
