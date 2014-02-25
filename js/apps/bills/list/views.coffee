define ['apps/bills/list/templates', 'views/_base', 'msgbus', 'royalslider'], (Templates, AppView, msgBus, royalSlider) ->


	SlideItem: class SlideItem extends AppView.ItemView
		template: Templates.slideItem

	TileItem: class TileItem extends AppView.ItemView
		template: Templates.tileItem 


	SliderView: class SliderView extends AppView.CompositeView
			template: Templates.slider
			itemView: SlideItem
			itemViewContainer: "#panes"
			slider: null

			onCompositeRendered: =>
				@slider = @$("#panes").royalSlider(
							autoHeight: true,
							keyboardNavEnabled: true,
							arrowsNav: false,
							navigateByClick: false,
							allowCSS3: false,
							controlNavigation: 'none').data('royalSlider')

	TileView: class TileView extends AppView.CompositeView
		template: Templates.tile
		itemView: TileItem 
		itemViewContainer: "#tileitems"
						

	Layout: class BillsAppLayout extends AppView.Layout
		template: Templates.layout

		regions:
			searchRegion: "#search-region"
			billsRegion: "#bills-region"

		events:
			"click #tile-toggle": "tile"
                # "click .grid":       "slide"

		tile:->
			@trigger "show:tile"

        # slide:->
        #     @trigger "show"	

  
