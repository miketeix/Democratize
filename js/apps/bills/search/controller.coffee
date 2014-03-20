define ["msgbus", "apps/bills/search/views", "controller/_base", "backbone" ], (msgBus, Views, AppController, Backbone) ->
	class Controller extends AppController
		initialize: (options={}) ->

			@entities= msgBus.reqres.request "menu:entities"

			@layout = @getLayoutView()

			@listenTo @layout, "show", =>
				@toggleRegion() #tile toggle button
				@inputRegion() #search box
				@menuRegion()  #dropdown menu

			@listenTo @layout, "toggle:tile:view", =>
				msgBus.commands.execute "toggle:bills:region"

			

			@show @layout


		menuRegion: ->
			@dropdown = @getMenuView @entities

			@listenTo @dropdown, "filter:bills", (data) =>
				msgBus.commands.execute "search:filter:bills", data

			@layout.menuRegion.show @dropdown

		inputRegion: ->
			@inputBox = @getInputView()
			@layout.inputRegion.show @inputBox

		toggleRegion: ->
			@tileToggle = @getToggleView()
			@layout.toggleRegion.show @tileToggle


		getLayoutView: ->
			new Views.Layout

		getToggleView: ->
			new Views.ToggleView

		getInputView: ->
			new Views.InputView

		getMenuView: (collection) ->
			new Views.MenuView 
				collection: collection		