`import DS from 'ember-data'`

LearningPath =  DS.Model.extend
  title: DS.attr('string')
  shortDescription: DS.attr('string')
  introduction: DS.attr('string')
  prerequisites: DS.attr('string')
  completion: DS.attr('string')
  resources: DS.attr('string')
  learningModules: DS.hasMany 'learning_module'
  family: DS.belongsTo 'learning_path_family'
  collaborates: DS.hasMany 'collaborate'
  events: DS.hasMany 'event'

  collaborators: Ember.computed.mapBy 'collaborates', 'user'
  sortedEvents: Ember.computed.sort 'events', 'eventsSorting'
  eventsSorting: [ 'createdAt' ]

longLorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem. Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem. Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum."
shortLorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."

LearningPath.reopenClass
  FIXTURES: [
    {
      id: 1
      title: 'My Learning Path'
      shortDescription: 'A short description of this path.'
      introduction: longLorem
      prerequisites: (shortLorem for i in [0...3]).join('\n')
      completion: longLorem
      resources: longLorem
      family: 1
      learningModules: [1]
      events: [1, 2, 3, 4]
    }
  ]

`export default LearningPath`
