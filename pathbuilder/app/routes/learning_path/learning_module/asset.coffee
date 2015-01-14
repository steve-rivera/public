`import Ember from "ember"`

AssetRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @store.find('asset', params.asset_id)

`export default AssetRoute`
