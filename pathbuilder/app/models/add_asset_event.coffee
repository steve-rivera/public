`import DS from "ember-data"`
`import EventValue from "pathbuilder/models/event_value"`

AddAssetEvent = EventValue.extend
  asset: DS.belongsTo 'asset'
  learningModule: DS.belongsTo 'learning_module'

`export default AddAssetEvent`
