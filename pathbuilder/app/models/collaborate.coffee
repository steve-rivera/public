`import Ember from "ember"`

Collaborate =  DS.Model.extend
  user: DS.belongsTo 'user'
  learningPath: DS.belongsTo 'learning_path'

`export default Collaborate`
