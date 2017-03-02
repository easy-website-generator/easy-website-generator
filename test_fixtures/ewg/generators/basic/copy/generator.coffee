g = require('easy-website-generator').generator('basic/copy')

# supports repetitive or main, builds sub tasks for repetitive children
# also build a main task for all children
g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
   .pipe(
      g.changed("#{config.source}/#{config.selector}"))
   .pipe(
      g.dest(config.target))
