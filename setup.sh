#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

source ~/.dotfiles/.bash_aliases

cd $CURRENT

rm -rf $TMPDIR
