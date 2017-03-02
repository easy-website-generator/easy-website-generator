g     = require('easy-website-generator').generator('services/bower')
bower = require 'gulp-bower'

g.generate (config, index) =>
  bower()
  .pipe(
    g.dest(config.target))
