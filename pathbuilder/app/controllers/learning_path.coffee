`import Ember from "ember"`

LearningPathController = Ember.ObjectController.extend
  editIntro: false

  actions:
    editIntro: ->
      @set('editIntro', true)

`export default LearningPathController`
