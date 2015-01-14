`import Ember from "ember"`

AssetController = Ember.ObjectController.extend
  actions:
    saveAsset: ->
      @get('model').save()

`export default AssetController`
