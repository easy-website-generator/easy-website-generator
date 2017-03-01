g           = require('easy-website-generator').generator('compile/coffee')
coffee      = require 'gulp-coffee'
uglify      = require 'gulp-uglify'
sourcemaps  = require 'gulp-sourcemaps'
stage       = require('ewg-config').stage

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
   .pipe(
      sourcemaps.init())
   .pipe(
      coffee().on('error', g.log))
   .pipe(
      g.if(
        config.minimize,
        uglify()))
   .pipe(
      g.if(
        stage.isDevelopment(),
        sourcemaps.write()))
   .pipe(
      g.dest(config.target))
