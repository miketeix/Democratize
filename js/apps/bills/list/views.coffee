define ['apps/bills/list/templates', 'views/_base', 'msgbus'], (Templates, AppView, msgBus) ->

	class SlideItem extends AppView.ItemView
		template: Templates.slideItem


	SliderView: class SliderView extends AppView.CompositeView
  		template: Templates.slider
  		itemView: SlideItem
  		itemViewContainer: "#panes"


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

  
