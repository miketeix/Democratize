define ['apps/bills/list/templates', 'views/_base', 'msgbus', 'royalslider'], (Templates, AppView, msgBus, royalSlider) ->

	class SlideItem extends AppView.ItemView
		template: Templates.slideItem


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
  						controlNavigation: 'none').data('royalSlider')
						

	Layout: class BillsLayout extends AppView.Layout
		template: Templates.layout

		regions:
			searchRegion: "#search-region"
			billsRegion: "#bills-region"


		# events:
  #               "click .tile":    "tile"
  #               "click .grid":      "slide"

  #       tile:->
  #           @trigger "show:tile"

  #       slide:->
  #           @trigger "show"	

  
