`import Ember from "ember"`

LearningPathLearningModuleRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @store.find('learning_module', params.module_id)

`export default LearningPathLearningModuleRoute`


