g           = require('easy-website-generator').generator('compile/sass')
sass        = require 'gulp-sass'
cssmin      = require 'gulp-cssnano'
sourcemaps  = require 'gulp-sourcemaps'
stage       = require('ewg-config').stage

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
   .pipe(
      sourcemaps.init())
   .pipe(
      g.changed("#{config.source}/#{config.selector}"))
   .pipe(
      sass(
        includePaths: config.include_paths))
   .pipe(
      g.if(
        config.minimize,
        cssmin()))
   .pipe(
      g.if(
         stage.isDevelopment(),
         sourcemaps.write()))
   .pipe(
      g.dest(config.target))
