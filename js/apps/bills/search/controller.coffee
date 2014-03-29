define ["msgbus", "apps/bills/search/views", "controller/_base", "backbone", "typeahead" ], (msgBus, Views, AppController, Backbone, Typeahead) ->
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

			# console.log(@inputBox.$("#autoComplete"))

			tags = msgBus.reqres.request "tag:entities"
			suggestionEngine = new Bloodhound
				datumTokenizer: Bloodhound.tokenizers.obj.whitespace("tag")
				queryTokenizer: Bloodhound.tokenizers.whitespace
				local: $.map(tags, (tag) ->
						tag: tag)

			suggestionEngine.initialize()

			autoComplete = @inputBox.$("#autoComplete")

			autoComplete.typeahead
				'hint': true
				'highlight': true
				'minLength': 1
			,
				'name': "tags"
				'displayKey': "tag"
				'source': suggestionEngine.ttAdapter()

			autoComplete.on "typeahead:selected", (e, data)->
				msgBus.commands.execute "search:filter:bills", data
				
				


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