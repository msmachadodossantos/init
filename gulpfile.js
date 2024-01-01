"use strict";

/* eslint-disable @typescript-eslint/no-var-requires */
const gulp = require("gulp");
const { dest, series, watch } = require("gulp");
const clean = require("gulp-clean");
const rename = require("gulp-rename");
const sass = require("gulp-sass")(require("sass"));
const uglify = require("gulp-uglify");

const allSrc = "resources/assets/**/*.*";

/*  ---------------------------------------------------------------------------------------------------------------   */

const coreImageSrc = "resources/assets/core/images/**/*.*";
const coreImageDist = "public/assets/core/images/";
const coreScriptSrc = "resources/assets/core/scripts/**/*.js";
const coreScriptDist = "public/assets/core/js/";
const coreStyleSrc = "resources/assets/core/styles/**/*.scss";
const coreStyleDist = "public/assets/core/css/";

function cleanCoreImage() {
    return gulp
        .src(coreImageDist, { allowEmpty: true, read: false })
        .pipe(clean());
}

function coreImage() {
    return gulp
        .src(coreImageSrc)
        .pipe(gulp.dest(coreImageDist));
}

function cleanCoreStyle() {
    return gulp
        .src(coreStyleDist, { allowEmpty: true, read: false })
        .pipe(clean());
}

function coreStyle() {
    return gulp
        .src(coreStyleSrc, { allowEmpty: true })
        .pipe(sass({ outputStyle: "expanded" }, "").on("error", sass.logError))
        .pipe(dest(coreStyleDist))
        .pipe(sass({ outputStyle: "compressed" }, "").on("error", sass.logError))
        .pipe(rename({ extname: ".min.css" }))
        .pipe(dest(coreStyleDist));
}

function coreScript() {
    return gulp
        .src(coreScriptSrc, { allowEmpty: true })
        .pipe(dest(coreScriptDist))
        .pipe(uglify())
        .pipe(rename({ extname: ".min.js" }))
        .pipe(dest(coreScriptDist));
}

function cleanCoreScript() {
    return gulp
        .src(coreScriptDist, { allowEmpty: true, read: false })
        .pipe(clean());
}

exports.core = series(cleanCoreImage, coreImage, cleanCoreStyle, coreStyle, cleanCoreScript, coreScript);


/*  ---------------------------------------------------------------------------------------------------------------   */

function copyVendors() {
    return gulp.src('resources/vendors/**/*')
        .pipe(gulp.dest('public/vendors'));
}

/*  ---------------------------------------------------------------------------------------------------------------   */

exports.default = function () {
    watch(allSrc, series(cleanCoreImage, coreImage, cleanCoreStyle, coreStyle, cleanCoreScript, coreScript, copyVendors));
};

exports.dist = series(cleanCoreImage, coreImage, cleanCoreStyle, coreStyle, cleanCoreScript, coreScript, copyVendors);