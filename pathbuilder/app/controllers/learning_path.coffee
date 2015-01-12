`import Ember from "ember"`

LearningPathController = Ember.ObjectController.extend
  actions:
    saveAll: ->
      @get('model').save()

`export default LearningPathController`
