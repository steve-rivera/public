`import Ember from "ember"`

LearningModuleShowRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @modelFor 'learning_path.learning_module'

`export default LearningModuleShowRoute`
