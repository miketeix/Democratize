define ["backbone","msgbus"], (Backbone, msgBus) ->

	API = 
		getMenuItems: ->
			new Backbone.Collection [
				(name: "All", grouped: true),
                                (name: "Popular", grouped: true),
                                (name: "Random", grouped: true),
                                (name: "Newest", grouped: true),
                                (name: "Conservative", grouped: false),
                                (name: "Green", grouped: false),
                                (name: "Liberal", grouped: false),
                                (name: "NDP", grouped: false),
                                (name: "PQ", grouped: false)
			             ]

	msgBus.reqres.setHandler "menu:entities", ->
		API.getMenuItems()
