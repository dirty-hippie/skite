# for more details see: http://emberjs.com/guides/controllers/

Skite.AchievementsController = Ember.ArrayController.extend
  sortProperties: [ 'achievedAt' ]
  sortAscending: false
  
  actions:
    addAchievement: ->
      achievement = @store.createRecord 'achievement',
        title: @get('newAchievement')
        achievedAt: new Date
      
      @set('newAchievement', '')
      achievement.save()