var gulp      = require('gulp'),
    shell     = require('gulp-shell');

gulp.task('vim', shell.task([
  'rsync -av ./dotfiles/vimrc ~/.vimrc',
  'echo Installing...',
  'vim +PluginInstall +qall'
  ])
);

gulp.task('linux', shell.task([
  'cp -i ./dotfiles/vimrclinux ~/.vimrc',
  'echo Installing...',
  'vim +PluginInstall +qall'
  ])
);

gulp.task('default', ['vim']);
