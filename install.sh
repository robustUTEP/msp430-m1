#!/usr/bin/env bash
mkdir -p ~/bin
cp msp430loader.sh ~/bin
touch ~/.bashrc
if [ -z "`grep DSDIR ~/.bashrc`" ] ; then
    echo "adding to .bashrc"
    cat bashrc-insert >> ~/.bashrc
fi
