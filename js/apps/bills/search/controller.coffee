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
				console.log(data)
				msgBus.commands.execute "search:filter:bills", data

			@layout.menuRegion.show @dropdown

		inputRegion: ->
			@inputBox = @getInputView()
			@layout.inputRegion.show @inputBox

			# console.log(@inputBox.$("#autoComplete"))
			mps = msgBus.reqres.request "mpTag:entities"
			_tags = msgBus.reqres.request "subjectTag:entities"
			ridings = msgBus.reqres.request "ridingTag:entities"
			parties = msgBus.reqres.request "partyTag:entities"

			mpTags = new Bloodhound
				datumTokenizer: Bloodhound.tokenizers.obj.whitespace("mp")
				queryTokenizer: Bloodhound.tokenizers.whitespace
				local: $.map(mps, (memberTag)  ->
						mp: memberTag)

			subjectTags = new Bloodhound
				datumTokenizer: Bloodhound.tokenizers.obj.whitespace("tags")
				queryTokenizer: Bloodhound.tokenizers.whitespace
				local: $.map(_tags, (tag) ->
						tags: tag)

			ridingTags = new Bloodhound
				datumTokenizer: Bloodhound.tokenizers.obj.whitespace("riding")
				queryTokenizer: Bloodhound.tokenizers.whitespace
				local: $.map(ridings, (ridingTag) ->
						riding: ridingTag)

			partyTags = new Bloodhound
				datumTokenizer: Bloodhound.tokenizers.obj.whitespace("party")
				queryTokenizer: Bloodhound.tokenizers.whitespace
				local: $.map(parties, (partyTag) ->
						party: partyTag)

			mpTags.initialize()
			subjectTags.initialize()
			ridingTags.initialize()
			partyTags.initialize()

			autoComplete = @inputBox.$("#autoComplete")

			autoComplete.typeahead
				'hint': true
				'highlight': true
				'minLength': 1
			,
				'name': "mpTags"
				'displayKey': "mp"
				'source': mpTags.ttAdapter()
				'templates': 
  					header: '<h3 class="">Members of Parliament</h3>'
			,
				'name': "subjectTags"
				'displayKey': "tags"
				'source': subjectTags.ttAdapter()
				'templates': 
  					header: '<h3 class="">Issues</h3>'
  			,
				'name': "ridingTags"
				'displayKey': "riding"
				'source': ridingTags.ttAdapter()
				'templates': 
  					header: '<h3 class="">Riding</h3>'
  			,
				'name': "partyTags"
				'displayKey': "party"
				'source': partyTags.ttAdapter()
				'templates': 
  					header: '<h3 class="">Parties</h3>'

			autoComplete.on "typeahead:selected", (e, data, dataset)->
				console.log(data)
				if (dataset == "mpTags")
					msgBus.commands.execute "show:mp:profile", data

				else 
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