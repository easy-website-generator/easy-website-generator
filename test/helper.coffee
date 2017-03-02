process.argv.push('--test')

{stage, Config, loader} = require 'ewg-config'

ewgConfigFile = 'test_fixtures/ewg/ewg-config.yml'

module.exports =
  srcPath:   'test_fixtures/ewg/src'
  distPath:  'test_fixtures/ewg/dist'
  ewgConfig: new Config(ewgConfigFile)
