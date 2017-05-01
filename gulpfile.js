var gulp = require('gulp');
var sass = require('gulp-sass');
var nodemon = require('nodemon');

gulp.task('sass', function () {
  return gulp.src('./public/scss/app.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('./public/css'));
});

gulp.task('sass:watch', function () {
  gulp.watch('./public/scss/**/*.scss', ['sass']);
});

gulp.task('nodemon', function () {
  nodemon({
    script: 'server.js',
    ext: 'js',
    env: { 'NODE_ENV': 'development' },
    ignore: './public'
  });
});

gulp.task('default', ['sass', 'sass:watch', 'nodemon']);
