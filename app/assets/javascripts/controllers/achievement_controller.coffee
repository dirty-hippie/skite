Skite.AchievementController = Ember.ObjectController.extend
  editDescription: false
  isDescription: (->
    return false unless @get('description') 
    !/^\s$/.test(@get('description'))
  ).property('description')

  actions:
    showEditDescription: -> @set('editDescription', true)
    hideEditDescription: -> @set('editDescription', false)

    save: (record) ->
      @send('hideEditDescription')
      record.save()
    delete: -> 
      return unless confirm 'Are you sure'     
      @get('model').destroyRecord().then =>      
        @transitionToRoute('achievements.index')