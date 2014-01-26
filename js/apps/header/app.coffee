define ["msgbus","apps/header/list/controller"],(msgBus, Controller) ->

	API = 
		list: ->
			new Controller 
				region: msgBus.reqres.request "header:region"

#on start up
	msgBus.commands.setHandler "start:header:app", ->
		API.list() 