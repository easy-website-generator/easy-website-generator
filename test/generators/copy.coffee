helper = require '../helper'
color  = require 'color'
fs     = require 'fs'
file   = require 'file'
chai   = require 'chai'
should = chai.should()

describe 'generator/basic/copy', ->
  describe '#generate()', ->
    it 'copies all files from src/assets/public to dist/', (done)->
      publicSrcDir = "#{helper.srcPath}/assets/public"
      publicDistDir = "#{helper.distPath}"

      file.walkSync publicSrcDir, (dirPath, dirs, files)->
        files.should.be.a 'array'
        files.length.should.not.equal 0

        distPath = dirPath.replace(publicSrcDir, publicDistDir)
        for file in files
          fullFilePath = "#{distPath}/#{file}"
          console.log "      checking file #{fullFilePath.yellow}"
          fs.existsSync(fullFilePath).should.be.true

      done()
