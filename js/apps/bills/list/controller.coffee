define ["msgbus", "apps/bills/list/views", "controller/_base", "backbone", "obscura", 'royalslider' ], (msgBus, Views, AppController, Backbone, Obscura, royalSlider) ->
	class Controller extends AppController
		initialize: (options={})->

			@entities= msgBus.reqres.request "bill:entities"
			@filtered = new Obscura(@entities)
			
			msgBus.commands.setHandler "toggle:bills:region", =>
				@toggleBillsRegion()

			msgBus.commands.setHandler "search:filter:bills", (data) =>
				@refreshFilter data

			@layout = @getLayoutView()

			@listenTo @layout, "show", =>
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

		refreshFilter: (data) ->
			$('#panes').royalSlider('destroy').empty()
			filterKey
			for key of data
				filterKey = key

			switch filterKey
				when "party" then @filtered.filterBy('party', {party: data.party})
				when "filter" then switch data.filter
						when "all" then @filtered.resetFilters()
						when "newest" then console.log("newest")
						when "popular" then console.log("popular")
						when "random" then console.log("random")
				when "mp" then console.log("random")
				when "tag" then console.log(data)
				when "bill" then console.log("bill")


			
			

