g       = require('easy-website-generator').generator('services/analytics')
replace = require 'gulp-replace'

g.generate (config, index) =>
  g.src("#{config.source}/#{config.selector}")
    .pipe(
      g.changed("#{config.source}/#{config.selector}"))
    .pipe(
      replace('</head>', "#{buildContent(config)}</head>"))
    .pipe(
      g.dest(config.target))



beginMarker = (adapter) =>
  "<!-- #{adapter.name} Analytics -->"

endMarker = (adapter) =>
  "<!-- End #{adapter.name} Analytics -->"

buildContent = (adapter) =>
  content = adapter.code
  for own key, value of adapter.params
    content = content.replace("{#{key}}", value)

  "#{beginMarker(adapter)} #{content} #{endMarker(adapter)}"
