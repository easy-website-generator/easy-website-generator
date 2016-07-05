fs      = require 'fs'
request = require 'request'
unzip   = require 'unzip'
path    = require 'path'
loader  = require 'ewg-config'
glob    = require 'glob'
mkdirp  = require 'mkdirp'
rmdir   = require 'rmdir'
log     = require 'ewg-logging'
spawn   = require('child_process').spawn;


localZip = "./tmp.zip"

module.exports = m =
  init: (theme = 'all') =>
    themePath = m.detectThemeSource theme

    log.green "installing theme: #{themePath}"

    # remove previous downloaded zip file in case of broken installation
    fs.unlink localZip if fs.existsSync localZip

    # download zipped theme file
    m.download themePath, localZip

  detectThemeSource: (theme = 'ewg-theme-default') ->
    unless theme[...4] is 'http'
      # if theme source is no url, it is a ewg hostet theme
      theme = "https://github.com/easy-websites/ewg-theme-#{theme}/archive/master.zip"

    theme

  download: (remote, local) =>
    stream = fs.createWriteStream(local)
    request.get(remote).pipe stream

    stream.on 'finish', =>
      m.extract(local, '.')

  extract: (zipFile, target) =>
    stream = fs.createReadStream(zipFile).pipe(
      unzip.Extract({ path: target }))

    stream.on 'close', =>
      fs.unlink zipFile

      m.install()


  detectWsConfig: (basePath) ->
    glob.sync("#{basePath}/**/ewg-config.yml")[0]

  moveFilesToParentDirectory: (dir) ->
    files = glob.sync("#{dir}/**/*", dot: true)
    for src in files
      target = "#{dir}/../#{src.substring(dir.length + 1)}"
      unless fs.lstatSync(src).isDirectory()
        mkdirp.sync path.dirname(target)
        fs.rename src, target

  install: =>
    # search for workspace.yml in downloaded and extractet folders
    wsConfig = m.detectWsConfig('.')

    config = loader.loadRawYaml(wsConfig).development

    extractedThemeFolder = "#{path.dirname(wsConfig)}"

    # copy all files from unzipped folder to workspace
    m.moveFilesToParentDirectory extractedThemeFolder

    # delete unzipped folder
    rmdir extractedThemeFolder

    for entry in config.template.run_after_copy
      console.log entry
      cmd = spawn(entry, [], { stdio: 'inherit', cwd: "#{extractedThemeFolder}/..", shell: true })

      cmd.on('data', (data) ->
        console.log(data.toString())
      )

      cmd.on('error', (data) ->
        console.error(data.toString())
      )
