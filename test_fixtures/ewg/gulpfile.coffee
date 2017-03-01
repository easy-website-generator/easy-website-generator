console = require 'console'
colors  = require 'colors'
gulp    = require 'gulp'
ws      = require 'easy-website-generator'
stage   = require('ewg-config').stage

ws.setGulpRefference gulp

console.log ' -----------------------------------'.green
console.log " | starting Easy-Website-Generator (#{stage.current().red})".green
console.log ' -----------------------------------'.green

require('require-dir')("src/generators", recurse: true)

gulp.task('default', ['serve'])
