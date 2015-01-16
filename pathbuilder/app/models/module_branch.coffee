`import DS from "ember-data"`

ModuleBranch = DS.Model.extend
  tip: DS.belongsTo 'learning_module'
  draft: DS.belongsTo 'learning_module'

`export default ModuleBranch`
