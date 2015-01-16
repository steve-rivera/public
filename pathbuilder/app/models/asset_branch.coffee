`import DS from "ember-data"`

AssetBranch = DS.Model.extend
  tip: DS.belongsTo 'asset'
  draft: DS.belongsTo 'asset'

`export default AssetBranch`

