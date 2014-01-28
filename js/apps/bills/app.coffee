#define ["msgbus", "marionette", "backbone", "apps/bills/list/controller", "apps/bills/search/controller" ], (msgBus, Marionette, Backbone, ListController, SearchController) ->
define ["msgbus", "backbone.marionette", "backbone", "apps/bills/list/controller" ], (msgBus, Marionette, Backbone, ListController) ->
	
	class Router extends Marionette.AppRouter
        appRoutes:
            "bills": "list"
            # "games/:id/detail": "detail"

	API=
		list: ->
			new ListController
				region: msgBus.reqres.request "main:region"

		# search: (region) ->
		# 	new SearchController
		# 		region: region

	msgBus.commands.setHandler "start:bills:app", ->
		API.list()