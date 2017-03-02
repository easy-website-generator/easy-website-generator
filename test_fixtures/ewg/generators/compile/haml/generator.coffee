g                 = require('easy-website-generator').generator('compile/haml')
g.config.globals  = require('easy-website-generator').config.globals
g.config.ws       = require('easy-website-generator')

{EWGHamlRenderer} = require('ewg-haml-coffee-gulp')

renderer          = new EWGHamlRenderer(g.config)

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
   .pipe(
      renderer.stream())
   .pipe(
      g.dest(config.target))
