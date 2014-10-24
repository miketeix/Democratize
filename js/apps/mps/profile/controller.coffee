define ["msgbus", "apps/mps/profile/views", "controller/_base", "backbone", "obscura", "apps/bills/app"], (msgBus, Views, AppController, Backbone, Obscura, BillsApp) ->
	class Controller extends AppController
		initialize: (options={})->

			console.log("options: ", options)

			
			# @entities= msgBus.reqres.request "bill:entities"
			# @filtered = new Obscura(@entities)
						
			@layout = @getLayoutView()

			@listenTo @layout, "show", =>
				@detailsRegion(options.mpData)
				@tiledBillsRegion() 

			@show @layout

			console.log("@layout.billRegion", @layout.billsRegion);

			billsData = 
				region: @layout.billsRegion
				mpName: options.mpData.mp
				isMpPage: true

			mpBills = msgBus.reqres.request "get:bills:app", billsData

		detailsRegion: (mpData) ->
			console.log("mpData", mpData)

			mpModelData = Backbone.Model.extend()
			mpModel = new mpModelData(mpData)
			detailsView = new Views.DetailsView
				model: mpModel

			@layout.detailsRegion.show detailsView


		tiledBillsRegion: ->


		getLayoutView: ->
			new Views.Layout

