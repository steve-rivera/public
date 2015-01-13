`import Ember from "ember"`

LearningPathSummaryRoute = Ember.Route.extend
  renderTemplate: (controller, model) ->
    @render 'summary'

  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @modelFor 'learning_path'


`export default LearningPathSummaryRoute`

