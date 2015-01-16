`import DS from 'ember-data'`

LearningModule =  DS.Model.extend
  title: DS.attr('string')
  assets: DS.hasMany('asset')
  branch: DS.belongsTo 'module_branch', inverse: null
  path: DS.belongsTo 'learning_path'
  index: DS.attr 'number'
  publishedAt: DS.attr 'date'

  multipleAssets: Ember.computed.gt 'assets.length', 1
  orderedAssets: Ember.computed.sort 'assets', 'assetsSorting'
  assetsSorting: [ 'index' ]
  firstAsset: Ember.computed.alias 'orderedAssets.firstObject'
  restAssets: (-> @get('orderedAssets').slice(1)).property 'orderedAssets.[]'


`export default LearningModule`

