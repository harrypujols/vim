var gulp        = require('gulp'),
    rename      = require('gulp-rename');

gulp.task('vim', function() {
  gulp.src('./dotfiles/vimrc')
    .pipe(rename('.vimrc'))
    .pipe(gulp.dest('~/'))
});

gulp.task('vimcustom', function() {
  gulp.src('./dotfiles/vimrc.custom')
    .pipe(rename('.vimrc.custom'))
    .pipe(gulp.dest('~/'))
});


gulp.task('default', ['vim', 'vimcustom']);
