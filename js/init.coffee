# require bootloader

require.config
  # baseUrl: "/scripts"
  
  

  paths:
    jquery: "../bower_components/jquery/jquery"
    backbone: "../bower_components/backbone-amd/backbone"
    underscore: "../bower_components/underscore-amd/underscore"
    
    # alias all marionette libs 
    "backbone.marionette": "../bower_components/backbone.marionette/lib/core/amd/backbone.marionette"
    "backbone.wreqr": "../bower_components/backbone.wreqr/lib/amd/backbone.wreqr"
    "backbone.babysitter": "../bower_components/backbone.babysitter/lib/amd/backbone.babysitter"
    "backbone.syphon": "../bower_components/backbone.syphon/lib/amd/backbone.syphon" # amd version

    # alias the bootstrap js lib 
    bootstrap: "vendor/bootstrap"

     # data visualization
    d3: "../bower_components/d3/d3"
    
    # Alias text.js for template loading and shortcut the templates dir to tmpl 
    text: "../bower_components/requirejs-text/text"
    # tmpl: "../templates" # going to be handled locally
    
    # handlebars from the require handlerbars plugin below (Alex Sexton)
    handlebars: "../bower_components/require-handlebars-plugin/Handlebars"

    # require handlebars plugin - Alex Sexton 
    i18nprecompile: "../bower_components/require-handlebars-plugin/hbs/i18nprecompile"
    json2: "../bower_components/require-handlebars-plugin/hbs/json2"
    hbs: "../bower_components/require-handlebars-plugin/hbs"

  hbs:
    disableI18n: true

# starting point for application 
  # deps: ["marionette","bootstrap"]

  shim:
    # backbone:
    #   deps: ["underscore", "jquery"]
    #   exports: "Backbone"

    bootstrap:
      deps: ["jquery"]
      exports: "jquery"

# start app when all config is loaded
require ["config/load", "app" ], (_config, app) -> # ensure that base application settings are loaded before we can call the app.  Templates, settings and jquery plugins
        app.start()

