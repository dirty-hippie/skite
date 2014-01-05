Skite.AchievementsNewController = Ember.Controller.extend
  isValid: (->            
    achievement  = @get('content')    
    if achievement
      achievement.get('isValid')
    else
      true
  ).property('content.isValid')

  content: null
  input: ""
  errors: (->
    if @get('isValid')
      ''
    else
      @get('content.errors').title.join ' '
  ).property('isValid')
  
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

