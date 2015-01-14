`import Ember from "ember"`

LearningPathSummaryRoute = Ember.Route.extend

  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @modelFor 'learning_path'


`export default LearningPathSummaryRoute`

