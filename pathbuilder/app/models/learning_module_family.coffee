`import DS from "ember-data"`

LearningModuleFamily = DS.Model.extend
  learningModules: DS.hasMany 'learning_module'

LearningModuleFamily.reopenClass
  FIXTURES: [
    {
      id: 1
      learningModules: [1]
    }
  ]

`export default LearningModuleFamily`
