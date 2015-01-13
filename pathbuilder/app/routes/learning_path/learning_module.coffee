`import Ember from "ember"`

LearningPathLearningModuleRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    learningPath = @modelFor 'learning_path'
    for learningModule in learningPath.get('learningModules').toArray()
      if learningModule.get('id') is params.module_id
        return learningModule
    return null


`export default LearningPathLearningModuleRoute`


