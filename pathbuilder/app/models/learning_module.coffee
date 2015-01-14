`import DS from 'ember-data'`

LearningModule =  DS.Model.extend
  title: DS.attr('string')
  assets: DS.hasMany('asset')
  family: DS.belongsTo 'learning_module_family'
  learningPath: DS.belongsTo 'learning_path'

  multipleAssets: Ember.computed.gt 'assets.length', 1
  firstAsset: Ember.computed.alias 'assets.firstObject'
  restAssets: (-> @get('assets').slice(1)).property 'assets.[]'

LearningModule.reopenClass
  FIXTURES: [
    {
      id: 1
      title: 'Module 1'
      assets: [
        1
        2
        3
        4
      ]
      family: 1
      learningPath: 1
    }
  ]

`export default LearningModule`

