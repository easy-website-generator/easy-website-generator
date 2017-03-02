del = require 'del'
g     = require('easy-website-generator').generator('basic/delete')

g.generate (config, index) =>
  del(config.folders)
