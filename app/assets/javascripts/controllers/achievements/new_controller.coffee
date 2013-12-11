Skite.AchievementsNewController = Ember.Controller.extend
  isValid: (->        
    true
  ).property('newAchievement')
  
  actions:
    addAchievement: -> 
      data = @parseInput @get('newAchievement')
      achievement = @store.createRecord 'achievement',
        title: data['title']
        achievedAt: data['achievedAt']
      
      @set('newAchievement', '')
      achievement.save()

