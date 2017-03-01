g       = require('easy-website-generator').generator('minimize/html')
htmlmin = require 'gulp-htmlmin'

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
    .pipe(
      g.changed("#{config.source}/#{config.selector}"))
    .pipe(
      htmlmin(config.options))
    .pipe(
      g.dest(config.target))
