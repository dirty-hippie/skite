Skite.AchievementController = Ember.ObjectController.extend
  editDescription: false

  actions:
    showEditDescription: -> @set('editDescription', true)
    hideEditDescription: -> @set('editDescription', false)

    save: (record) ->
      @send('hideEditDescription')
      record.save()