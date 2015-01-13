`import Ember from "ember"`

Collaborate =  DS.Model.extend
  user: DS.belongsTo 'user'
  learningPath: DS.belongsTo 'learning_path'

Collaborate.reopenClass
  FIXTURES: [
    {
      id: 1
      user: 1
      learningPath: 1
    }
    {
      id: 2
      user: 2
      learningPath: 1
    }
  ]

`export default Collaborate`
