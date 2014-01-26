define ["msgbus", "controller/_base", "apps/footer/show/views"], (msgBus, AppController, View) ->
	class Controller extends AppController
		initialize: ->
			footerView = @getFooterView()
			console.log("footerView: "+footerView);
			@show footerView

		
		getFooterView: ->
			new View.ItemView

