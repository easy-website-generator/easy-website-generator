gulp         = require 'gulp'
runSequence  = require 'run-sequence'

gulp.task 'generate', (cb) ->
  runSequence(
              [
                'basic-copy:generate'
                'compile-sass:generate'
                'compile-coffee:generate'
                'services-bower:generate'
              ],
              'basic-combine:generate',
              [
                'minimize-css:generate'
                'minimize-html:generate'
                'minimize-js:generate'
              ],
              'compile-haml:generate',
              [
                'services-sitemap:generate'
                'services-analytics:generate'
              ],
              cb)

gulp.task 'generate-and-exit', ->
  runSequence(
              'generate'
              ->
                process.exit(0)
              )
