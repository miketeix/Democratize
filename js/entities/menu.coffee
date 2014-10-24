define ["backbone","msgbus"], (Backbone, msgBus) ->

	API = 
		getMenuItems: ->
			new Backbone.Collection [
				(name: "All", grouped: true , filter: "all"),
                                (name: "Popular", grouped: true, filter: "popular"),
                                (name: "Random", grouped: true, filter: "random"),
                                (name: "Newest", grouped: true,  filter: "newest"),
                                (name: "Conservative", grouped: false,  party: "Conservative Party of Canada"),
                                (name: "Green", grouped: false,  party: "Green Party of Canada"),
                                (name: "Liberal", grouped: false,  party: "Liberal Party of Canada"),
                                (name: "NDP", grouped: false,  party: "New Democrat Party of Canada"),
                                (name: "Bloc", grouped: false,  party: "Bloc Quebecois" )
			             ]

	msgBus.reqres.setHandler "menu:entities", ->
		API.getMenuItems()