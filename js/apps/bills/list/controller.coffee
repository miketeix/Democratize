define ["msgbus", "apps/bills/list/views", "controller/_base", "backbone" ], (msgBus, Views, AppController, Backbone) ->
    class Controller extends AppController
        initialize: (options={})->
            
            @entities= msgBus.reqres.request "bill:entities"
            
            @layout = @getLayoutView()

            @listenTo @layout, "show", =>
                @slideRegion() # @entities
                # @searchRegion()

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
            @layout.billsRegion.show sliderView
             


        getSliderView: (collection) ->
            new Views.SliderView
                collection: collection

        # searchRegion: ->
        # 