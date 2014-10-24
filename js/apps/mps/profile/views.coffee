define ['apps/mps/profile/templates', 'views/_base', 'msgbus'], (Templates, AppView, msgBus) -> 

	DetailsView: class DetailsView extends AppView.ItemView
		template: Templates.details
										

	Layout: class MpsAppLayout extends AppView.Layout
		template: Templates.layout

		regions:
			detailsRegion: "#details-region"
			billsRegion: "#mp-bills-region"
