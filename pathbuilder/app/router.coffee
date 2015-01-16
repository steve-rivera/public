`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'learning_path', path: 'path/:path_branch_id', ->
    @route 'summary', path: 'show'
    @resource 'learning_path.learning_module', path: 'module/:module_branch_id', ->
      @route 'show', path: 'show'
      @route 'asset', path: 'asset/:asset_id'


`export default Router`

