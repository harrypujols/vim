# vim
vim settings to carry around

## to deploy
- Make sure you have Vundle installed
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
- `cd` to this directory
- choose the shell or python install

### to run the shell script
```bash
$ chmod +x install.sh
$ ./install.sh
```

### to run the python script
```bash
$ python install.py
```

## after deploying
- Install the [Powerline fonts][1] by running
```bash
$ git clone git@github.com:powerline/fonts.git
$ cd fontd
$ chmod +x install.sh
$ ./install.sh
```
- Profit.

[1]: https://powerline.readthedocs.io/en/master/installation/osx.html#vim-installation
