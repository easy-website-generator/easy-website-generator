g       = require('easy-website-generator').generator('services/sitemap')
sitemap = require 'gulp-sitemap'
ignore  = require 'gulp-ignore'

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
    .pipe(
      ignore(config.blacklist))
    .pipe(
      g.changed("#{config.source}/#{config.selector}"))
    .pipe(
      sitemap(config))
    .pipe(
      g.dest(config.target))
