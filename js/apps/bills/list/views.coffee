define ['apps/bills/list/templates', 'views/_base', 'msgbus', 'royalslider', 'rs.autoheight'], (Templates, AppView, msgBus, royalSlider, autoheight) ->


	SlideItem: class SlideItem extends AppView.ItemView
		template: Templates.slideItem

	TileItem: class TileItem extends AppView.ItemView
		template: Templates.tileItem 


	SliderView: class SliderView extends AppView.CompositeView
			template: Templates.slider
			itemView: SlideItem
			itemViewContainer: "#panes"
			slider: null
			collectionEvents:
				"reset": "collectionReset"	
			
			onCompositeCollectionRendered: ->
				console.log('onCompositeCollectionRendered');
				@slider = @$itemViewContainer.royalSlider(
					autoHeight: true,
					keyboardNavEnabled: true,
					arrowsNav: false,
					navigateByClick: false,
					allowCSS3: false,
					controlNavigation: 'none').data('royalSlider')

			onCompositeRendered: =>
				console.log("onCompositeRendered")	 
				
			collectionReset: ->
				console.log("collection Reset")	
				
				
				

	TileView: class TileView extends AppView.CompositeView
		template: Templates.tile
		itemView: TileItem 
		itemViewContainer: "#tileitems"
		collectionEvents:
				"reset": "collectionReset"

		onCompositeCollectionRendered: ->
				console.log('onCompositeCollectionRendered');

		collectionReset: ->
				console.log("collection Reset")
						

	Layout: class BillsAppLayout extends AppView.Layout
		template: Templates.layout

		regions:
			searchRegion: "#search-region"
			billsRegion: "#bills-region"



  
