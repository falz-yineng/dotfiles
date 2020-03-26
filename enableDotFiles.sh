#!/bin/sh

for F in .git-completion .vimrc .vim .tmux.conf .maven-console-in-color .ps1 .git-prompt .bash_profile .bashrc
do
  cp -ia ${F} ~
done

test -r ~/.bash_profile && echo 'You can enable these dotfiles with ". ~/.bash_profile" command.' || echo '~/.bash_profile not found.' >&2
