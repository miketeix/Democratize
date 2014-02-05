define ["msgbus", "apps/bills/list/views", "controller/_base", "backbone" ], (msgBus, Views, AppController, Backbone) ->
    class Controller extends AppController
        initialize: (options={})->
            
            @entities= msgBus.reqres.request "bill:entities"
            
            @layout = @getLayoutView()

            @listenTo @layout, "show", =>
                @searchRegion()
                @slideRegion() # @entities
                

            # @listenTo @layout, "show:tile", =>
            #     @tileRegion() # @entities

            @show @layout
            # ,
            #     loading:
            #         entities: @entities


        getLayoutView: ->
            new Views.Layout

        slideRegion: ->
            sliderView = @getSliderView @entities
            # @listenTo sliderView, 'composite:rendered', =>
            #     console.log("sliderView Rendered")
            @layout.billsRegion.show sliderView
            sliderView.slider.updateSliderSize(); # RoyalSlider can only calculate size after being inserted into DOM
             


        getSliderView: (collection) ->
            new Views.SliderView
                collection: collection

        searchRegion: ->
            msgBus.commands.execute "show:search", @layout.searchRegion
        