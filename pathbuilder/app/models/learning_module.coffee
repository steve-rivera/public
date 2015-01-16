`import DS from 'ember-data'`

LearningModule =  DS.Model.extend
  title: DS.attr('string')
  assets: DS.hasMany('asset')
  branch: DS.belongsTo 'module_branch', inverse: null
  path: DS.belongsTo 'learning_path'
  index: DS.attr 'number'
  publishedAt: DS.attr 'date'

  multipleAssets: Ember.computed.gt 'assets.length', 1
  firstAsset: Ember.computed.alias 'assets.firstObject'
  restAssets: (-> @get('assets').slice(1)).property 'assets.[]'

`export default LearningModule`

