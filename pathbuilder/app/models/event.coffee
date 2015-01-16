`import DS from "ember-data"`

addAssetToModule = 'add_asset_to_module'
addModuleToPath = 'add_module_to_path'
renameAsset = 'rename_asset'
renameModule = 'rename_module'
renamePath = 'rename_path'
redescribeAsset = 'redescribe_asset'
redescribePath = 'redescribe_path'
moveAsset = 'move_asset'
moveModule = 'move_module'

Event = DS.Model.extend
  createdAt: DS.attr 'date'
  learningPath: DS.belongsTo 'learning_path'

  eventType: DS.attr 'string'
  # These relationships and attrs may or may not be used.  It all depends on the type.
  asset: DS.belongsTo 'asset'
  learningModule: DS.belongsTo 'learning_module'
  user: DS.belongsTo 'user'
  string: DS.attr 'string'

  eventTemplate: (->
    switch @get('eventType')
      when addAssetToModule then 'events/add_asset_to_module'
      when addModuleToPath then 'events/add_module_to_path'
      when renameAsset then 'events/rename_asset'
      when renameModule then 'events/rename_module'
      when renamePath then 'events/rename_path'
      when redescribeAsset then 'events/redescribe_asset'
      when redescribePath then 'events/redescribe_path'
      when moveAsset then 'events/move_asset'
      when moveModule then 'events/move_module'
      else throw "Unrecognized event type."
  ).property 'eventType'

`export default Event`
