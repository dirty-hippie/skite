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
    msg = ''
    errors = @get('content.errors')
    msg += errors.title.join(' ') if errors.title
    msg += errors.achievedAt.join(' ') if errors.achievedAt
    msg
  ).property('isValid')
  
  actions:
    addAchievement: ->       
      achievement = @get 'content'

      if achievement
        achievement.set('input', @get('input'))
      else            
        achievement = @store.createRecord 'achievement',
          input: @get('input')
                    
      achievement.on 'didCreate', @, @resetProperties

      achievement.commit()
      @set('content', achievement)


  resetProperties: ->
    @set('content', null)
    @set('input', '')

