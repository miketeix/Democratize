define ["apps/header/list/templates", "views/_base"], (Templates, AppView) ->
	
	Layout: class Header extends AppView.Layout
		template: Templates.layout
		regions:
			navRegion: "#nav-region"

	HeaderView: class ListHeaders extends AppView.ItemView
		template: Templates.header
				

	# LoginView: class LoginView extends AppView.ItemView
	# 	template: Templates.login
	# 	el: "#login"
