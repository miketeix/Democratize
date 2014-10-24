define ["msgbus", "backbone.marionette", "backbone", "apps/mps/list/controller", "apps/mps/profile/controller"], (msgBus, Marionette, Backbone, ListController, ProfileController) ->
	
	class Router extends Marionette.AppRouter
        appRoutes:
            "mps": "list"				 # "list" MP's
            "mps/:id": "profile"         #  show MP "profile"

	API=
		list: ->						 
			new ListController
				region: msgBus.reqres.request "main:region"

		profile: (mpData) ->
			new ProfileController
				region: msgBus.reqres.request "main:region"
				mpData: mpData

		
	msgBus.commands.setHandler "start:mps:app", ->
		API.list()

	msgBus.commands.setHandler "show:mp:profile", (mpData) ->  
		API.profile(mpData) 