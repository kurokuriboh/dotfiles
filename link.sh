#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

files="vimrc vim zshrc"

for file in $files; do
    ln -s ${BASEDIR}/$file ~/.$file 
done
