define ['apps/bills/search/templates', 'views/_base', 'msgbus'], (Templates, AppView, msgBus) ->
	
	Layout: class SearchLayout extends AppView.Layout
		template: Templates.layout

		regions:
			inputRegion: "#input-region"
			menuRegion: "#menu-region"
			toggleRegion: "#toggle-region"
			
		events:
			"click #tile-toggle": "tile"

		tile:->
			$("#tile-toggle span:first-child").toggleClass(
				->
					if $(this).hasClass("glyphicon-th")
						"glyphicon-stop"
					else if $(this).hasClass("glyphicon-stop")
						"glyphicon-th"
				);  
			@trigger "toggle:tile:view"

	InputView: class InputView extends AppView.ItemView
		template: Templates.input

	MenuView: class MenuView extends AppView.ItemView
		template: Templates.menu
	
	ToggleView: class ToggleView extends AppView.ItemView
		template: Templates.toggle
	