g          = require('easy-website-generator').generator('basic/combine')
concat     = require 'gulp-concat'

g.generate (config, index) =>
  g.src(config.sources)
    .pipe(
      concat(config.combined))
    .pipe(
      g.dest(config.target))
