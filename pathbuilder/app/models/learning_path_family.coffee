`import DS from "ember-data"`

LearningPathFamily = DS.Model.extend
  learningPaths: DS.hasMany 'learning_path'

LearningPathFamily.reopenClass
  FIXTURES: [
    {
      id: 1
      learningPaths: [1]
    }
  ]

`export default LearningPathFamily`
