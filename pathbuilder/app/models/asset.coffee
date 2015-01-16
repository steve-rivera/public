`import DS from 'ember-data'`
`import AssetValue from "pathbuilder/models/asset_value"`

Asset =  DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')
  learningModule: DS.belongsTo 'learningModule'
  value: DS.belongsTo AssetValue, polymorphic: true
  branch: DS.belongsTo 'asset_branch', inverse: null
  index: DS.attr 'number'
  publishedAt: DS.attr 'date'

  skippable: DS.attr('boolean')
  commentsAllowed: DS.attr('boolean')

  assetIdString: (->
    "asset_#{@get('id')}"
  ).property 'id'

`export default Asset`
