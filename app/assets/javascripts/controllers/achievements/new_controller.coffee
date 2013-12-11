Skite.AchievementsNewController = Ember.Controller.extend
  isValid: (->        
    true
  ).property('newAchievement')

  content: null
  input: ""
  errors: ""
  
  actions:
    addAchievement: -> 
      achievement = @get 'content'

      if achievement
        achievement.set('input', @get('input'))
      else            
        achievement = @store.createRecord 'achievement',
          input: @get('input')
                    
      achievement.commit()
      @set('content', achievement)

