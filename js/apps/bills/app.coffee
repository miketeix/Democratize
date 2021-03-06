#define ["msgbus", "marionette", "backbone", "apps/bills/list/controller", "apps/bills/search/controller" ], (msgBus, Marionette, Backbone, ListController, SearchController) ->
define ["msgbus", "backbone.marionette", "backbone", "apps/bills/list/controller", "apps/bills/search/controller" ], (msgBus, Marionette, Backbone, ListController, SearchController) ->
	
	class Router extends Marionette.AppRouter
        appRoutes:
            "bills": "list"
            # "games/:id/detail": "detail"

	API=
		list: ->
			new ListController
				region: msgBus.reqres.request "main:region"

		search: (region) ->
			new SearchController
				region: region

		listMpBills: (data) ->
			new ListController
				region: data.region
				mpName: data.mpName
				isMpPage: data.isMpPage


		# search: (region) ->
		# 	new SearchController
		# 		region: region

	msgBus.commands.setHandler "start:bills:app", ->
		API.list()

	msgBus.commands.setHandler "show:search", (region) ->
		API.search region

	msgBus.reqres.setHandler "get:bills:app", (mpData) ->
		console.log(mpData)
		billsApp = API.listMpBills(mpData)
		billsApp