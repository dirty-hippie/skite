# for more details see: http://emberjs.com/guides/controllers/

Skite.AchievementsController = Ember.ArrayController.extend
	sortProperties: [ 'achievedAt' ]
	sortAscending: false
