# easy-website-generator [![npm version](https://badge.fury.io/js/easy-website-generator.svg)](https://badge.fury.io/js/easy-website-generator) [![Build Status](https://travis-ci.org/easy-website-generator/easy-website-generator.svg?branch=master)](https://travis-ci.org/easy-website-generator/easy-website-generator) [![Code Climate](https://codeclimate.com/github/easy-website-generator/easy-website-generator/badges/gpa.svg)](https://codeclimate.com/github/easy-website-generator/easy-website-generator)

The quick and easy way to develop modern and fast static websites a.k.a Easy-Website-Generator =)

###### Supports:
  * css styling with [sass](http://sass-lang.com/documentation/file.SASS_REFERENCE.html) and pre build helpers
  * javascript development with [coffee](http://coffeescript.org/)
  * html templating with a hacked [haml-coffee](https://github.com/easy-website-generator/haml-coffee)
  * custom and predefined haml helpers via nodeJs modules
  * site map generation
  * google analytics
  * twitter and opengraph tags
  * ...

###### Uses:
  * [nodejs](https://nodejs.org/en/)
  * [gulp](https://github.com/gulpjs/gulp)
  * [browser-sync](https://browsersync.io/)
  * [Easy-Website-Generator](https://github.com/easy-website-generator/)


### Installation
First you need to install [nodeJs](https://nodejs.org/en/download/). Then in your terminal:

```

npm install -g easy-website-generator coffee-script bower gulp

mkdir my-workspace

cd my-workspace

ewg init --theme simple

npm install --cached

gulp serve

```

_In case you have permission problems prefix the commandos with ``sudo``_

_Available themes at the moment: all, simple_

After running ``gulp serve`` the ewg will compile the html pages and opens a browser. On every source change the browser will reload.

### Ressources
> "[Easy-Website-Generator](https://github.com/easy-website-generator/)"

> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"

### Available Tasks
For a compleete list type: ``gulp -T``

### command line arguments
```
Usage: ewg [command] [options]

Commands:
  init      initialises a ewg repo
  serve     !not workin at he moment, use gulp serve! starts a webserver on an ewg repo and reloads on changes
  generate  generates the dist folder from your ewg repo

Options:
  --help        help
  --version     version
  --theme       installs a zipped theme from url when running ewg "init"
                                              [Standard: "simple"]
  --production  loads production settings when running ewg "serve" or
                "generate", default: development
  --test        load test settings when running ewg "serve" or "generate",
                default: development

```

### Themes

``ewg init --theme simple`` see: https://github.com/easy-websites/ewg-theme-simple

``ewg init --theme default`` see: https://github.com/easy-websites/ewg-theme-default

Planned themes are here: https://github.com/easy-websites

### Ressources
> "[Easy-Website-Generator](https://github.com/easy-website-generator/easy-website-generator)"

> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"

> TODO docs via github.io page
