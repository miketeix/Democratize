define ["apps/footer/show/templates", "views/_base"], (Templates, AppView) ->

	ItemView: class ShowFooterView extends AppView.ItemView
		template: Templates.footer