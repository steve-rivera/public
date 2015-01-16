`import Ember from "ember"`

OutlineExpandableComponent = Ember.Component.extend
  # External parameters
  expanded: false
  learningModule: null

  expandedClass: (->
    if @get('expanded')
      'expanded'
    else
      'collapsed'
  ).property 'expanded'

  actions:
    toggleExpand: ->
      expanded = @get('expanded')
      @set('expanded', not expanded)

`export default OutlineExpandableComponent`
