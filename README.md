# vim
vim settings to carry around

## to deploy
- Make sure you have Vundle installed
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
- Get [Node.js][1]
- Get [Gulp.js][2]
- Run `$ npm install`
- Then `$ gulp`

## after deploying
- You extend the config by running `gulp extend`
- Install the [Powerline fonts][3] by running
```bash
$ git clone git@github.com:powerline/fonts.git
$ cd fontd
$ chmod +x install.sh
$ ./install.sh
```
- Profit.

[1]: https://nodejs.org
[2]: http://gulpjs.com
[3]: https://powerline.readthedocs.io/en/master/installation/osx.html#vim-installation
