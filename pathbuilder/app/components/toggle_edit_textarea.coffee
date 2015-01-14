`import Ember from "ember"`

ToggleEditTextareaComponent = Ember.Component.extend
  # External parameters
  value: null

  # Internal parameters
  editing: false

  focusOut: ->
    @set('editing', false)
    @sendAction()

  actions:
    startEdit: ->
      @set('editing', true)
      Ember.run.schedule 'afterRender', this, ->
        element = @$(@get('element')).children('textarea')
        element.focus()
        position = element[0].value.length
        element[0].setSelectionRange(position, position)

`export default ToggleEditTextareaComponent`
