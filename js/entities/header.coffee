# static header entities
define ["backbone","msgbus"], (Backbone, msgBus) ->

	API = 
		getHeaders: ->
			new Backbone.Collection [
				(name: "HOME", url: "#", title: "", cssClass: "" )
                (name: "ABOUT", url: "#", title: "", cssClass: "")
                (name: "BILLS", url: "#", title: "", cssClass: "")
                (name: "DEMOCRATIZE", url: "#", title: "Democratize", cssClass: "", id:"logo" )
                (name: "MP's", url: "#", title: "", cssClass: "")
                (name: "BLOG", url: "#", title: "", cssClass: "")
                (name: "FRANÇAIS", url: "#", title: "", cssClass: "")
			]

	msgBus.reqres.setHandler "header:entities", ->
		API.getHeaders()
