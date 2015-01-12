`import Ember from "ember"`

LearningPathRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @store.find(params['id'])

`export default LearningPathRoute`
