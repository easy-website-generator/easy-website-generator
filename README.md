# easy-website-generator [![Build Status](https://travis-ci.org/easy-website-generator/easy-website-generator.svg?branch=master)](https://travis-ci.org/easy-website-generator/easy-website-generator) [![Contribute](https://img.shields.io/badge/Contribution-Open-brightgreen.svg)](CONTRIBUTING.md) [![Code Climate](https://codeclimate.com/github/easy-website-generator/easy-website-generator/badges/gpa.svg)](https://codeclimate.com/github/easy-website-generator/easy-website-generator) [![npm](https://img.shields.io/npm/dt/easy-website-generator.svg)](https://www.npmjs.com/package/easy-website-generator) [![Beerpay](https://beerpay.io/easy-website-generator/easy-website-generator/badge.svg?style=flat)](https://beerpay.io/easy-website-generator/easy-website-generator)

[![NPM](https://nodei.co/npm/easy-website-generator.png)](https://nodei.co/npm/easy-website-generator/)


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

npm install -g easy-website-generator coffee-script gulp

mkdir my-workspace

cd my-workspace

ewg init --theme simple

ewg serve

```

_In case you have permission problems prefix the commandos with ``sudo``_

_Available themes at the moment: all, simple, wordpress, bootstrap-standalone. Many are planned [github.com/easy-websites](https://github.com/easy-websites) - help creating them =)_

After running ``ewg serve`` the ewg will compile the html pages and opens a browser. On every source change the browser will reload.

### Ressources
> "[Easy-Website-Generator](https://github.com/easy-website-generator/)"

> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"

### Available Tasks
For a compleete list type: ``ewg tasks`` which is equivalent to ``gulp -T``

### command line arguments
```
Usage: ewg [command] [options]

Commands:
  init      initialises a ewg setup
  serve     starts a webserver on ewg `src` folder and watches for changes
  generate  generates the `dist` folder from your `src` folder by executing the pre defined gulp tasks
  tasks     show registered tasks
  *         you can call any gulp task by passing it to the `ewg` command

Options:
  --help        show help                                              [boolean]
  --version     show version                                           [boolean]
  --theme       installs a zipped theme from url when running `ewg init [--theme=simple]`
  --production  loads production settings from your `ewg-config.yml` when running `ewg serve` or
                "generate", default yml section: development
  --test        load test settings from your `ewg-config.yml` when running `ewg serve` or `ewg generate`,
                default yml section: development

```

### Themes

``ewg init --theme simple`` see: https://github.com/easy-websites/ewg-theme-simple

``ewg init --theme all`` see: https://github.com/easy-websites/ewg-theme-all

``ewg init --theme bootstrap-standalone`` see: https://github.com/easy-websites/ewg-theme-bootstrap-standalone

All themes are located here: https://github.com/easy-websites

### Ressources
> "[Easy-Website-Generator](https://github.com/easy-website-generator/easy-website-generator)"

> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"

### Changes
##### Version 1.0.1
  * update ewg-generator dependency
  * introduce basic tests / code metrics

##### Version 1.0.0
  * i guess it is stable now, i used it in in over 20 projects

##### Version 0.0.17
  * make coffeelint happy

##### Version 0.0.16
  * fix installer issues with new ewg-config.yml

##### Version 0.0.15
  * use new basePath option also for workspace path building

##### Version 0.0.14
  * support new ewg-generator basePath option

##### Version 0.0.13
  * ewg serve now prints colored child process output

##### Version 0.0.12
  * move and rename ``./src/workspace.yml`` to ``./ewg-config.yml``
  * lib/ewg/workspace full configured via ewg-config.yml
  * new config values introduces ``paths.src.base: './src'`` and ``paths.dist.base: './dist'``

## Support on Beerpay
Hey dude! Help me out for a couple of :beers:!

[![Beerpay](https://beerpay.io/easy-website-generator/easy-website-generator/badge.svg?style=beer)](https://beerpay.io/easy-website-generator/easy-website-generator)  [![Beerpay](https://beerpay.io/easy-website-generator/easy-website-generator/make-wish.svg?style=flat)](https://beerpay.io/easy-website-generator/easy-website-generator?focus=wish)
