define ["msgbus", "apps/bills/list/views", "controller/_base", "backbone", "obscura", "royalslider", "underscore" ], (msgBus, Views, AppController, Backbone, Obscura, royalSlider, _) ->
	class Controller extends AppController
		initialize: (options={})->
			console.log("options", options)
			@isMpPage = options.isMpPage

			@entities= msgBus.reqres.request "bill:entities"
			@filtered = new Obscura(@entities)
			@startSlide = 0
			
			msgBus.commands.setHandler "toggle:bills:region", (tileIndex = 0) =>
				@startSlide = tileIndex
				@toggleBillsRegion()

			msgBus.commands.setHandler "search:filter:bills", (data) =>
				@refreshFilter data

			@layout = @getLayoutView()

			@listenTo @layout, "show", =>
				console.log("isMpPage", @isMpPage)
				if @isMpPage
					@tileRegion()
				else
					@searchRegion()
					@slideRegion() 


			@show @layout
			# ,
			#     loading:
			#         entities: @entities


		getLayoutView: ->
			new Views.Layout

		slideRegion: ->
			sliderView = @getSliderView @filtered
			window.sliderView = sliderView
			@layout.billsRegion.show sliderView
			sliderView.slider.updateSliderSize() # RoyalSlider can only calculate size after being inserted into DOM

		tileRegion: ->
			tileView = @getTileView @filtered
			@layout.billsRegion.show tileView

		toggleBillsRegion: ->
			if @layout.billsRegion.currentView instanceof Views.SliderView 
				@tileRegion()
			else 
				@slideRegion()	

		searchRegion: ->
			msgBus.commands.execute "show:search", @layout.searchRegion             

		getTileView: (collection) ->
			new Views.TileView
				collection: collection 


		getSliderView: (collection) ->
			new Views.SliderView
				collection: collection
				startSlide: @startSlide

		partyLookup: (partyName) ->
			switch partyName
				when "Conservative Party of Canada" then return "cpc"
				when "Liberal Party of Canada" then return "lpc"
				when "New Democrat Party" then return "ndp"
				when "Green Party of Canada" then return "gpc"
				when "Bloc Quebecois" then return "bq"

		refreshFilter: (data) ->
			$('#panes').royalSlider('destroy').empty()
			incomingData = data
			filterKey
			for key of data
				filterKey = key

			switch filterKey
				when "party" then @filtered.filterBy('party', {party: @partyLookup(data.party)})
				when "filter" then switch data.filter
						when "all" then @filtered.resetFilters()
						when "newest" then @filtered.sortBy('introduced') # ToDo look up how to sort w/ Obscura
						when "popular" then console.log("popular")
						when "random" then console.log("random")
				when "mp" then msgBus.commands.execute "show:mp:profile" #@filtered.filterBy('sponsor', {sponsor: data.mp})
				when "tags" then @filtered.filterBy('tags', (model) ->
					_.some model.get('tags'), (obj) ->
						obj.en is incomingData.tags) # obj.en if in English, obj.fr if in French 
				when "riding" then @filtered.filterBy('riding', { riding:data.riding})
		

			
			

