define ['apps/bills/list/templates', 'views/_base', 'msgbus', 'royalslider'], (Templates, AppView, msgBus, royalSlider) -> #, 'rs.autoheight'


	SlideItem: class SlideItem extends AppView.ItemView
		template: Templates.slideItem

	TileItem: class TileItem extends AppView.ItemView
		template: Templates.tileItem
		events:
			"click" : -> msgBus.commands.execute "toggle:bills:region", @.options.indexInCollection
		
	SliderView: class SliderView extends AppView.CompositeView
			template: Templates.slider
			itemView: SlideItem
			itemViewContainer: "#panes"
			slider: null
			collectionEvents:
				"reset": "collectionReset"

			ui:
				currSlide: "#currentSlide"
				totalSlides: "#slideTotal"

			events:
				"click .prev": -> @slider.prev()
				"click .next": -> @slider.next()				
						
			onCompositeCollectionRendered: ->
				console.log('onCompositeCollectionRendered');
				console.log(@);
				@slider = @$itemViewContainer.royalSlider(
					autoHeight: true,
					keyboardNavEnabled: true,
					arrowsNav: false,
					navigateByClick: false,
					allowCSS3: false,
					startSlideId: @.options.startSlide,	
					controlNavigation: 'none').data('royalSlider')
				@updateResultsQueue(@.options.startSlide,@collection.models.length)
				@slider.ev.on 'rsAfterSlideChange', (event)=>
					@updateResultsQueue(event.target.currSlideId, event.target.numSlides)
					

			onCompositeRendered: =>
				console.log("onCompositeRendered")	 
				
			collectionReset: ->
				console.log("collection Reset")	

			updateResultsQueue: (current, total) ->
				@ui.currSlide.html(current+1)
				@ui.totalSlides.html(total)


				
	TileView: class TileView extends AppView.CompositeView
		template: Templates.tile
		itemView: TileItem 
		itemViewContainer: "#tileItems"
		collectionEvents:
			"reset": "collectionReset"

		itemViewOptions: (model) ->  # Will change to "childViewOptions" in the 2.0 version of Marionette
			indexInCollection: this.collection.indexOf(model)
		
		onCompositeRendered: =>
			console.log("onCompositeRendered")			

		onCompositeCollectionRendered: ->

		collectionReset: ->
				console.log("collection Reset")

						

	Layout: class BillsAppLayout extends AppView.Layout
		template: Templates.layout

		regions:
			searchRegion: "#search-region"
			billsRegion: "#bills-region"



  
