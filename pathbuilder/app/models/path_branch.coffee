`import DS from "ember-data"`

PathBranch = DS.Model.extend
  tip: DS.belongsTo 'learning_path'
  draft: DS.belongsTo 'learning_path'

`export default PathBranch`
