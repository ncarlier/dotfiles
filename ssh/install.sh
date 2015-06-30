#!/bin/bash
if [ ! -d ~/.ssh ]; then
    mkdir ~/.ssh
fi

if [ ! -f ~/.ssh/config ]; then
    cp -r $(pwd)/ssh/files/config ~/.ssh/
fi

if [ ! -f ~/.ssh/environment ]; then
    cp -r $(pwd)/ssh/files/environment ~/.ssh/
fi


