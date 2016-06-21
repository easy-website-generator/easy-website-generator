fs       = require 'fs'
nodePath = require 'path'

{stage, Config, loader} = require 'ewg-config'
Generator               = require 'ewg-generator'

class Workspace
  constructor: (@configFile) ->
    config         = new Config(@configFile, @onChange)

    @config        = config.config
    @srcPath       = @config.paths.src.base ? './src'
    @distPath      = @config.paths.dist.base ? './dist'
    @isDevelopment = stage.isDevelopment()
    @isProduction  = stage.isProduction()
    @isTest        = stage.isTest()

  setGulpRefference: (gulp) =>
    @gulp = gulp

  srcPathTo: (type, relative_path = '') =>
    nodePath.join(@srcPath, @config.paths.src[type], relative_path)

  distPathTo: (type, relative_path = '') =>
    nodePath.join(@distPath, @config.paths.dist[type], relative_path)

  uriPathTo: (type, relative_path = '') =>
    unless fs.existsSync(@distPathTo(type, relative_path))
      return relative_path

    nodePath.join(@config.paths.dist[type], relative_path)

  generator: (path) =>
    g = new Generator(
                path.replace('/', '-'),
                "#{@config.generators.folder}/#{path}/config.yml",
                @gulp)

    unless g.config.hasOwnProperty 'stop_on_error'
      g.config.stop_on_error = @config.generators.stop_on_error

    return g

  fileExists: (path) ->
    fs.existsSync path

  onChange: =>
    @gulp.run 'generate'

module.exports = new Workspace("ewg-config.yml")
