# EWG-Theme: "ewg-theme-all"
This theme includes all generators, some are disabled but you have all dependencies and it costs a second to change ``enabled: false`` to ``enabled: true``. It is a good point to start developing static and fast websites in a quick and modern way =)

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
First you need to install [nodeJs](https://nodejs.org/en/download/)

```

npm install -g easy-website-generator

mkdir my-workspace

cd my-workspace

ewg init --theme all

npm install -g coffee-script
npm install -g bower
npm install --cached

gulp serve

```
After running ``gulp serve`` the ewg will compile the html pages and opens a browser. On every source change the browser will reload.

### Ressources
> "[Easy-Website-Generator](https://github.com/easy-website-generator/)"

> "[Creative-Workflow](http://www.creative-workflow.berlin/company.html)"
