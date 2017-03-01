# this helper will be loaded into the haml rer context for all projects
module.exports =
  copyright: (who) ->
    "© #{new Date().getFullYear()} by #{who}"

  each_with_odd_even_class:(object, starts_with_odd=true, cb) ->
    odd = starts_with_odd
    for key, value of object
      cb( (if odd then 'odd' else 'even'), key, value)
      odd = !odd

  load_js_async: (url) ->
    return "<script>(function(d) {
      var wf = d.createElement('script'), s = d.scripts[0];
      wf.src = '#{url}';
      s.parentNode.insertBefore(wf, s);
   })(document);</script>"
