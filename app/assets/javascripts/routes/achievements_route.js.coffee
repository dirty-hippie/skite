Skite.AchievementsRoute = Ember.Route.extend
	model: -> @store.find('achievement')