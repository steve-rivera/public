`import DS from 'ember-data'`
`import Ember from "ember"`

LearningPath =  DS.Model.extend
  title: DS.attr('string')
  shortDescription: DS.attr('string')
  modules: DS.hasMany 'learning_module'
  branch: DS.belongsTo 'path_branch', inverse: null
  collaborates: DS.hasMany 'collaborate'
  events: DS.hasMany 'event'
  publishedAt: DS.attr 'date'

  details: DS.belongsTo 'path_detail'
  introduction: Ember.computed.alias 'details.introduction'
  prerequisites: Ember.computed.alias 'details.prerequisites'
  completion: Ember.computed.alias 'details.completion'
  resources: Ember.computed.alias 'details.resources'

  # FIXME: Uncomment
  #collaborators: Ember.computed.mapBy 'collaborates', 'user'
  sortedEvents: Ember.computed.sort 'events', 'eventsSorting'
  eventsSorting: [ 'createdAt' ]

`export default LearningPath`
