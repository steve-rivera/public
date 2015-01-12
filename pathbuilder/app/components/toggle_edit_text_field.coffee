`import Ember from "ember"`

ToggleEditTextFieldComponent = Ember.Component.extend
  # External parameters
  value: null

  # Internal parameters
  editing: false

  keyPress: (e) ->
    if e.keyCode == 13
      @set('editing', false)
      @sendAction()
      e.preventDefault()

  focusOut: ->
    @set('editing', false)
    @sendAction()

  actions:
    startEdit: ->
      @set('editing', true)
      Ember.run.schedule 'afterRender', this, ->
        @$(@get('element')).children('input').focus()

`export default ToggleEditTextFieldComponent`
