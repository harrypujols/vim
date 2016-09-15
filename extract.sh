#!/bin/bash

if [ ! -d "fonts" ]; then
  git clone https://github.com/powerline/fonts.git
fi

cd fonts
chmod +x install.sh
sh install.sh
