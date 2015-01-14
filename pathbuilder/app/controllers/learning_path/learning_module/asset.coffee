`import Ember from "ember"`

AssetController = Ember.ObjectController.extend
  relevantEvents: (->
    asset = @get('model')
    allEvents = @get('learningModule.learningPath.sortedEvents')
    allEvents.filter (event) ->
      event.get('asset') is asset
  ).property 'learningModule.learningPath.sortedEvents', 'model'

  actions:
    saveAsset: ->
      @get('model').save()

`export default AssetController`
