define ["backbone","msgbus"], (Backbone, msgBus) ->

	API = 
		getMenuItems: ->
			new Backbone.Collection [
				(name: "All", grouped: true , role:"filter", filter: "all"),
                                (name: "Popular", grouped: true, role:"filter", filter: "popular"),
                                (name: "Random", grouped: true, role:"filter", filter: "random"),
                                (name: "Newest", grouped: true, role:"filter", filter: "newest"),
                                (name: "Conservative", grouped: false, role:"party", filter: "cpc"),
                                (name: "Green", grouped: false, role:"party", filter: "gpc"),
                                (name: "Liberal", grouped: false, role:"party", filter: "lpc"),
                                (name: "NDP", grouped: false, role:"party", filter: "ndp"),
                                (name: "PQ", grouped: false, role:"party", filter: "pq" )
			             ]

	msgBus.reqres.setHandler "menu:entities", ->
		API.getMenuItems()
