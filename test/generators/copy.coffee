helper = require '../helper'
fs     = require 'fs'
chai   = require 'chai'
expect = chai.expect

describe 'generator/basic/copy', ->
  describe '#generate()', ->
    it 'copies files from src/assets/public to dist/', (done)->
      testPath = "#{helper.distPath}/robots.txt"
      fs.stat testPath, (error, stat) ->
        expect(error).to.equal(null)
        done()
