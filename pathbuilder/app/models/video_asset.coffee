`import AssetValue from "pathbuilder/models/asset_value"`
`import DS from "ember-data"`

VideoAsset = AssetValue.extend
  url: DS.attr('string')

VideoAsset.reopenClass
  FIXTURES: [
    {
      id: 1
      url: 'https://www.youtube.com/watch?feature=player_embedded&v=hRR-Zy1H-Yo'
    }
    {
      id: 2
      url: 'https://www.youtube.com/watch?feature=player_embedded&v=BcaqdXh566E'
    }
  ]

`export default VideoAsset`

