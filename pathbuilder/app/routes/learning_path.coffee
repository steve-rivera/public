`import Ember from "ember"`

LearningPathRoute = Ember.Route.extend
  renderTemplate: (controller, model) ->
    @render 'learning_path'

  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    # FIXME: Remove these first calls to store.find.
    # They are necessary when using a fixtures adapter.
    @store.find('learning_module')
    @store.find('asset')
    @store.find('user')
    @store.find('collaborate')
    @store.find('event')
    @store.find('video_asset')
    @store.find('text_asset')
    @store.find('learning_path_family')
    @store.find('learning_module_family')
    @store.find('learning_path', params.path_id)

  actions:
    saveAll: ->
      @get('controller').get('model').save()

    addContentToModule: (learningModule) ->
      # FIXME: Implement this.
      console.log "Called addContentToModule"

    addModuleToPath: ->
      # FIXME: Implement this.
      console.log "Called addModuleToPath"

    addCollaborators: ->
      # FIXME: Implement this.
      console.log "Called addCollaborators"

    deleteAsset: (asset) ->
      # FIXME: Implement this.
      console.log "Called deleteAsset"

    viewAssetDetail: (asset) ->
      learningPath = @get('controller').get('model')
      @transitionTo 'learning_path.learning_module.asset',
        learningPath.get('id'),
        asset.get('learningModule.id'),
        asset.get('id')

`export default LearningPathRoute`
