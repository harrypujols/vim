var gulp        = require('gulp'),
    rename      = require('gulp-rename');

gulp.task('vim', function() {
  gulp.src('./dotfiles/vimrc')
    .pipe(rename('.vimrc'))
    .pipe(gulp.dest('~/'))
});

gulp.task('vimcustom', function() {
  gulp.src('./dotfiles/vimrcc')
    .pipe(rename('.vimrc.custom'))
    .pipe(gulp.dest('~/'))
});

gulp.task('vimwriter', function() {
  gulp.src('./dotfiles/vimrcwrite')
    .pipe(rename('.vim'))
    .pipe(gulp.dest('~/'))
});



gulp.task('default', ['vim', 'vimcustom', 'vimwriter']);
