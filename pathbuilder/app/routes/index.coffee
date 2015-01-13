`import Ember from "ember"`

IndexRoute = Ember.Route.extend
  renderTemplate: ->
    @render 'header', outlet: 'header'

`export default IndexRoute`

