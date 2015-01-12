`import Ember from "ember"`

LearningPathRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @store.find('learning_path', params['id'])

`export default LearningPathRoute`
