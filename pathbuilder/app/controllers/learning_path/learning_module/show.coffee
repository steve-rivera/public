`import Ember from "ember"`

standardViewStyle = 'Standard View'
condensedViewStyle = 'Condensed View'
expandedViewStyle = 'Expanded View'

LearningModuleController = Ember.ObjectController.extend
  queryParams: [ 'assetId', 'viewStyle' ]
  assetId: null
  viewStyles: [ standardViewStyle, condensedViewStyle, expandedViewStyle ]
  viewStyle: standardViewStyle

  asset: (->
    assetId = @get('assetId')
    learningModule = @get('model')
    return null if ((not assetId?) or (not learningModule?))
    for asset in learningModule.get('assets').toArray()
      if asset.get('id') is assetId
        return asset
    return null
  ).property 'assetId', 'model'

  scrollToAsset: (->
    asset = @get('asset')
    if asset?
      Ember.run.schedule 'afterRender', this, ->
        Ember.$('#' + asset.get('assetIdString'))[0].scrollIntoView()
  ).observes('asset').on('init')

  innerTemplateName: (->
    'learning_path/learning_module_' + switch @get('viewStyle')
      when standardViewStyle then 'standard'
      when condensedViewStyle then 'condensed'
      when expandedViewStyle then 'expanded'
      else throw "Unrecognized viewStyle: #{@get('viewStyle')}"
  ).property 'viewStyle'

  actions:
    saveModule: ->
      @get('model').save()

`export default LearningModuleController`
