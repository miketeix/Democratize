define ["msgbus", "controller/_base", "apps/footer/show/views"], (msgBus, AppController, View) ->
	class Controller extends AppController
		initialize: ->
			footerView = @getFooterView()
			@show footerView

		
		getFooterView: ->
			new View.ItemView

