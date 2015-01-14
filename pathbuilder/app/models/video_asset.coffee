`import AssetValue from "pathbuilder/models/asset_value"`
`import DS from "ember-data"`

VideoAsset = AssetValue.extend
  assetType: 'VIDEO'
  assetTypeDescription: 'video'
  assetBodyTemplate: 'video_body'
  assetTypeImageSrc: '/dummy.svg'
  specialOptionsTemplate: 'video_options'
  displayTemplate: 'video_display'
  url: DS.attr('string')

VideoAsset.reopenClass
  FIXTURES: [
    {
      id: 1
      url: 'https://www.youtube.com/embed/hRR-Zy1H-Yo'
    }
    {
      id: 2
      url: 'https://www.youtube.com/embed/BcaqdXh566E'
    }
  ]

`export default VideoAsset`

