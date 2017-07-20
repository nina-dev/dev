var gulp = require('gulp');
var browserSync = require('browser-sync');
var sass = require('gulp-sass');
var plumber = require('gulp-plumber');
var csscomb = require('gulp-csscomb');
var notify  = require('gulp-notify');
var autoprefixer = require('gulp-autoprefixer');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var watch = require('gulp-watch');
var changed = require('gulp-changed');
var cache = require('gulp-cached');
var imagemin    = require('gulp-imagemin');

var $ = require('gulp-load-plugins')();
var svgstore = require('gulp-svgstore');
var svgmin = require('gulp-svgmin');
var svg2png = require('gulp-svg2png');
var cheerio = require('gulp-cheerio');
var destDir = 'html/css'; // 出力用ディレクトリ
var srcSass = 'resource/assets/sass/**/*.scss';
var cmsDir = 'wp/wordpress/wp-content/themes/nina';

var cleanCSS = require('gulp-clean-css');

gulp.task( 'copy', function() {
    return gulp.src(
        [ 'html/css/**', 'html/js/*.js' ],
        { base: 'html' }
    )
    .pipe( gulp.dest(cmsDir) );
} );



gulp.task('sass', function () {
  return gulp.src([srcSass])
    .pipe(plumber({ // gulp-plumberを咬ますとエラー時にgulpが止まらない。
        errorHandler: notify.onError('Error: <%= error.message %>') // gulp-notifyでエラー通知を表示
    }))
    .pipe(sass()) // gulp-sassでコンパイルし、
    .pipe(cleanCSS())
    .pipe(rename({suffix: '.min'}))
    .pipe(autoprefixer({
            browsers: ['last 2 versions', 'Android 3', 'ie 9', 'iOS >= 8.1'],
            cascade: false
    }))
    //.pipe(csscomb()) // gulp-csscombで整形してあげて、
    .pipe(gulp.dest(destDir))
});

gulp.task('minify-js', function() {
    return gulp.src("resource/assets/js/*.js")
        .pipe(uglify())
        .pipe(gulp.dest('html/js/'));
        //.pipe(gulp.dest('js')); 上書きする場合
});

gulp.task('svg', function () {
  gulp.src('img/svg/icons/*.svg')
    .pipe($.svgmin())
    .pipe($.svgstore({ inlineSvg: true }))
    .pipe($.cheerio({
      run: function ($, file) {
          $('svg').addClass('hide');
          $('[fill]').removeAttr('fill');
      },
      parserOptions: { xmlMode: true }
    }))
    .pipe(gulp.dest('html/img/svg/'))
});


//gulp watchタスク
gulp.task('watch', function(){
    gulp.watch(srcSass, ['sass']);
});

gulp.task('default',['sass','minify-js','copy'],function(){
    watch(['resource/**/*.scss'], function(event){
        gulp.start(['sass']); // sassに変更があったら実行。cssを吐き出すので下のwatchが動く。
    });
});