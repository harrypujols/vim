var gulp   = require('gulp'),
var rename = require('gulp-rename');

gulp.task('move', function() {
  gulp.src('./vimrc')
    .pipe(rename('.vimrc'))                                                                          .pipe(gulp.dest('~/'));
}

gulp.task('default', ['move']);
