define ["msgbus", "apps/bills/list/views", "controller/_base", "backbone" ], (msgBus, Views, AppController, Backbone) ->
	class Controller extends AppController
		initialize: (options={})->

			@entities= msgBus.reqres.request "bill:entities"

			msgBus.commands.setHandler "toggle:bills:region", =>
				@toggleBillsRegion()

			@layout = @getLayoutView()

			@listenTo @layout, "show", =>
				@searchRegion()
				@slideRegion() # @entities


			@show @layout
			# ,
			#     loading:
			#         entities: @entities


		getLayoutView: ->
			new Views.Layout

		slideRegion: ->
			sliderView = @getSliderView @entities
			# @listenTo sliderView, 'composite:rendered', =>
			#     console.log("sliderView Rendered")
			@layout.billsRegion.show sliderView
			sliderView.slider.updateSliderSize() # RoyalSlider can only calculate size after being inserted into DOM

		tileRegion: ->
			tileView = @getTileView @entities
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

