g       = require('easy-website-generator').generator('minimize/css')
cssmin  = require 'gulp-cssnano'
rename  = require 'gulp-rename'

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
    .pipe(
      g.changed("#{config.source}/#{config.selector}"))
    .pipe(
      cssmin())
    .pipe(
      rename({suffix: config.suffix}))
    .pipe(
      g.dest(config.target))
