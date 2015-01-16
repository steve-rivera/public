`import Ember from "ember"`
`import reorder from "pathbuilder/utils/reorder"`

LearningPathRoute = Ember.Route.extend
  renderTemplate: (controller, model) ->
    @render 'learning_path'

  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @store.find('path_branch',
      ids: [params.path_branch_id]
      deep: true).then (branches) -> branches.get('firstObject.draft')

  actions:
    saveAll: ->
      @get('controller').get('model').save()

    viewAssetDetail: (asset) ->
      learningPath = @get('controller').get('model')
      @transitionTo 'learning_path.learning_module.asset',
        learningPath.get('id'),
        asset.get('learningModule.id'),
        asset.get('id')

    addContentToModule: (learningModule) ->
      # FIXME: Implement this.
      console.log "Called addContentToModule"

    addModuleToPath: ->
      # FIXME: Implement this.
      console.log "Called addModuleToPath"

    deleteAsset: (asset) ->
      asset.destroyRecord()

    addCollaborators: ->
      # FIXME: Implement this.
      console.log "Called addCollaborators"

    reinsertAsset: (asset, options) ->
      beforeAsset = options.target.before
      assets = asset.get('learningModule.assets')
      i = assets.indexOf(asset)
      j = assets.indexOf(beforeAsset)
      reorder(assets, 'index', i, j-i)


`export default LearningPathRoute`
