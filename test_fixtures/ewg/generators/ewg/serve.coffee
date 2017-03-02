browserSync = require('browser-sync').create()
ws          = require 'easy-website-generator'
gulp        = require 'gulp'

gulp.task 'watch-generator', ['generate'], (cb)=>
  browserSync.reload()
  cb()

# TODO watch for source code changes and restart serve
gulp.task 'serve', ['generate'], (cb) =>
  browserSync.init ws.config.server
  gulp.watch 'src/**/*', ['watch-generator'], cb
