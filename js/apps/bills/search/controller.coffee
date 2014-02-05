define ["msgbus", "apps/bills/search/views", "controller/_base", "backbone" ], (msgBus, Views, AppController, Backbone) ->
	class Controller extends AppController
		initialize: (options={}) ->

            @entities= msgBus.reqres.request "menu:entities"
            
            @layout = @getLayoutView()

            @listenTo @layout, "show", =>
                @inputRegion() #search box
                @menuRegion()  #dropdown menu
                
            @show @layout


        menuRegion: ->
        	@dropdown = @getMenuView @entities
        	@layout.menuRegion.show @dropdown

        inputRegion: ->
        	@inputBox = @getInputView()
        	@layout.inputRegion.show @inputBox

        getLayoutView: ->
            new Views.Layout

        getInputView: ->
        	new Views.InputView

		getMenuView: (collection) ->
			new Views.MenuView 
				collection: collection