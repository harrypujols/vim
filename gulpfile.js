var gulp      = require('gulp'),
    shell     = require('gulp-shell');

gulp.task('vim', shell.task([
  'rsync -av ./dotfiles/vimrc ~/.vimrc',
  'echo Installing...',
  'vim +PluginInstall +qall'
  ])
);

gulp.task('extend', shell.task([
  'cp -i ./dotfiles/vimrc_profile ~/.vimrc_profile',
  'echo Installing...',
  'vim +PluginInstall +qall'
  ])
);

gulp.task('default', ['vim']);
