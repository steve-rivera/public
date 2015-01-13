`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'learning_path', path: 'path/:path_id', ->
    @route 'summary', path: 'summary'
    @route 'module', 'module/:module_id'


`export default Router`

