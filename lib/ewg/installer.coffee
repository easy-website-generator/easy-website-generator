fs      = require 'fs'
request = require 'request'
unzip   = require 'unzip'
exec    = require('child_process').exec;
path    = require 'path'
loader  = require 'ewg-config'
glob    = require 'glob'
mkdirp  = require 'mkdirp'
rmdir   = require 'rmdir'
log     = require 'ewg-logging'

srcPath  = "#{process.cwd()}/src"
localZip = "#{srcPath}/tmp.zip"

module.exports = m =
  init: (theme = 'ewg-theme-default') =>
    theme = m.themeSource theme

    log.green "installing theme: #{theme}"

    unless fs.existsSync srcPath
      fs.mkdirSync srcPath

    if fs.existsSync localZip
      fs.unlink localZip

    m.download theme, localZip

  themeSource: (theme) ->
    unless theme[...4] is 'http'
      theme = "https://github.com/easy-website-generator/#{theme}/archive/master.zip"

    theme

  download: (remote, local) =>
    stream = fs.createWriteStream(local)
    request.get(remote).pipe stream

    stream.on 'finish', =>
      m.extract(local, srcPath)

  extract: (zipFile, target) =>
    stream = fs.createReadStream(zipFile).pipe(
      unzip.Extract({ path: target }))

    stream.on 'close', =>
      fs.unlink zipFile

      m.install()

  detectWsConfig: (basePath) ->
    glob.sync("#{basePath}/**/workspace.yml")[0]

  moveFilesToParentDirectory: (dir) ->
    files = glob.sync("#{dir}/**/*", dot: true)
    for src in files
      target = "#{dir}/../#{src.substring(dir.length + 1)}"
      unless fs.lstatSync(src).isDirectory()
        mkdirp.sync path.dirname(target)
        fs.rename src, target

  install: =>
    wsConfig = m.detectWsConfig(srcPath)

    config = loader.loadRawYaml(wsConfig).development

    zipFolder = path.dirname wsConfig

    m.moveFilesToParentDirectory zipFolder

    rmdir zipFolder

    for entry in config.template.copy_to_root
      fs.rename("#{srcPath}/#{entry}", entry)

    for entry in config.template.run_after_copy
      exec entry, (error, stdout, stderr) ->
        log.log stdout
