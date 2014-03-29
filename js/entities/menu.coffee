define ["backbone","msgbus"], (Backbone, msgBus) ->

	API = 
		getMenuItems: ->
			new Backbone.Collection [
				(name: "All", grouped: true , filter: "all"),
                                (name: "Popular", grouped: true, filter: "popular"),
                                (name: "Random", grouped: true, filter: "random"),
                                (name: "Newest", grouped: true,  filter: "newest"),
                                (name: "Conservative", grouped: false,  party: "cpc"),
                                (name: "Green", grouped: false,  party: "gpc"),
                                (name: "Liberal", grouped: false,  party: "lpc"),
                                (name: "NDP", grouped: false,  party: "ndp"),
                                (name: "PQ", grouped: false,  party: "pq" )
			             ]

	msgBus.reqres.setHandler "menu:entities", ->
		API.getMenuItems()
