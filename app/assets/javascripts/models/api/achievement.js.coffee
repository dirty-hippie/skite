# for more details see: http://emberjs.com/guides/models/defining-models/

Skite.ApiAchievement = DS.Model.extend
  title: DS.attr 'string'
  achievedAt: DS.attr 'date'
