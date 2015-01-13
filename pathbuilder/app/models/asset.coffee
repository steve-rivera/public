`import DS from 'ember-data'`
`import AssetValue from "pathbuilder/models/asset_value"`

Asset =  DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')
  learningModule: DS.belongsTo 'learningModule'
  value: DS.belongsTo AssetValue, polymorphic: true

  assetIdString: (->
    "asset_#{@get('id')}"
  ).property 'id'


Asset.reopenClass
  FIXTURES: [
    {
      id: 1
      title: 'Introduction'
      description: 'This is where you can edit a few introductory sentences about this particular module.  Simply click here to edit.  Remember to keep your introduction brief and to the point.'
      value: 1
      valueType: 'text_asset'
    }
    {
      id: 2
      title: 'JSON REST API in GO'
      description: 'This is a short introduction or description to the video "Writing a JSON REST API in GO". Explain what the video is and what learners can expect.'
      value: 1
      valueType: 'video_asset'
    }
    {
      id: 3
      title: 'Bulid a RESTful API in GO'
      description: 'This is a short introduction or description to the video "Writing a JSON REST API in GO". Explain what the video is and what learners can expect.'
      value: 2
      valueType: 'video_asset'
    }
    {
      id: 4
      title: 'Assessment'
      description: 'This is a short introduction to or description of your assessment.'
      value: 2
      valueType: 'text_asset'
    }
  ]

`export default Asset`
