# easy-website-generator [![npm version](https://badge.fury.io/js/easy-website-generator.svg)](https://badge.fury.io/js/easy-website-generator) [![Build Status](https://travis-ci.org/easy-website-generator/easy-website-generator.svg?branch=master)](https://travis-ci.org/easy-website-generator/easy-website-generator) [![Code Climate](https://codeclimate.com/github/easy-website-generator/easy-website-generator/badges/gpa.svg)](https://codeclimate.com/github/easy-website-generator/easy-website-generator)


The Easy-Website-Generator

### installation
First you need to install nodejs, follow https://nodejs.org

The create your new workspace folder and change your current directory

``mkdir my-workspace && cd my-workspace``

Then install the Easy-Website-Generator via npm in your terminal:

``npm install -g easy-website-generator``

``npm install -g gulp``

_In case you have permission problems prefix the commandos with ``sudo``_

Now you can init your workspace with:

``ewg init``

And to see the magic running (opens a browser window if ready):
``gulp serve # later: ewg serve``

### command line arguments
```
Usage: ewg [command] [options]

Kommandos:
  init      initialises a ewg repo
  serve     starts a webserver on ewg repo and watches for changes
  generate  generates the dist folder from your ewg repo

Optionen:
  --help        Hilfe anzeigen                                         [boolean]
  --version     Version anzeigen                                       [boolean]
  --theme       installs a zipped theme from url when running ewg "init"
                                              [Standard: "ewg-template-default"]
  --production  loads production settings when running ewg "serve" or
                "generate", default: development
  --test        load test settings when running ewg "serve" or "generate",
                default: development

```

### Ressources
> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"

> TODO docs via github.io page
