Skite.Router.map ()->
  @resource 'achievements', ->
    @route 'new'

  @resource 'achievement', {path: '/achievement/:achievement_id'}

