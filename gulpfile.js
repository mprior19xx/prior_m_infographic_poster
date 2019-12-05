const gulp = require('gulp');
const sass = require('gulp-sass');
const postcss = require('gulp-postcss');
const nano = require('cssnano');
const prefixer = require ('autoprefixer');

// Include our image min library
const imagemin = require('gulp-imagemin');

// Define some common tasks for Gulp to run

// Like compile and minify SASS files
function compile(done) {
    gulp.src("./sass/**/*.scss")
        .pipe(sass())
        .on("error", sass.logError)
        .pipe(postcss([prefixer(), nano()])) //watch the brackets
        .pipe(gulp.dest("./css"))
        done()
}

// Minify every image
function squashImages(done) {
    gulp.src('./public/images/**')
        .pipe(imagemin())
        .pipe(gulp.dest('./public/dist/images'))
        done()
}

exports.compile = compile;
exports.squash = squashImages;