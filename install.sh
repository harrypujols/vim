#!/bin/bash

echo "select font"
echo "[1] Inconsolata for Powerline 16 MAC"
echo "[2] Cousine for Powerline 16 LINUX"
echo "[3] Menlo 14"
read font

rsync -av vimrc ~/.vimrc

if [ $font = "1" ]
then
  sed -i "" "s/Menlo:h14/Inconsolata\\\ for\\\ Powerline:h16/g" ~/.vimrc &&
  sed -i "" "/\" start clean/, /\" end clean/d" ~/.vimrc &&
  echo "Inconsolata 16 was set as default font"
elif [ $font = "2" ]
then
  sed -i "" "s/Menlo:h14/Cousine\\\ for\\\ Powerline\\\ 16/g" ~/.vimrc &&
  sed -i "" "/\" start clean/, /\" end clean/d" ~/.vimrc &&
  echo "Cousine 16 was set as default font"
elif [ $font = "3" ]
then
  echo "Menlo 14 was set as default font"
else
  echo "no valid selection. Menlo 14 was set as default"
fi

vim +PluginInstall +qall
