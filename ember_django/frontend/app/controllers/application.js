App.ApplicationController = Ember.Controller.extend({
	loggedIn: false,
	homeURL : function() {
		if (this.get('loggedIn')){
			return "#/user/welcome";
		}else {
			return "#/";
		}
	}.property('loggedIn'),
	STATIC_URL : DJANGO_STATIC_URL,
	THEME : THEME_URL,
});