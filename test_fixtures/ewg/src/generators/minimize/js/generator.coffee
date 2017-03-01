g      = require('easy-website-generator').generator('minimize/js')
uglify = require 'gulp-uglify'
rename = require 'gulp-rename'

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
    .pipe(
      g.changed("#{config.source}/#{config.selector}"))
    .pipe(
      uglify())
    .pipe(
      rename({suffix: config.suffix}))
    .pipe(
      g.dest(config.target))
