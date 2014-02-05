define ['apps/bills/search/templates', 'views/_base', 'msgbus'], (Templates, AppView, msgBus) ->
	
	Layout: class SearchLayout extends AppView.Layout
		template: Templates.layout

		regions:
			inputRegion: "#input-region"
			menuRegion: "#menu-region"

	InputView: class InputView extends AppView.ItemView
		template: Templates.input

	MenuView: class MenuView extends AppView.ItemView
  		template: Templates.menu
  	