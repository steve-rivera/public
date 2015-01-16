`import Ember from "ember"`

LearningPathLearningModuleRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @store.find('module_branch',
      ids: [ params.module_branch_id ]
      deep: true).then (branches) -> branches.get('firstObject.tip')

`export default LearningPathLearningModuleRoute`


