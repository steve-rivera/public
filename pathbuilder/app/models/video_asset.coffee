`import AssetValue from "pathbuilder/models/asset_value"`
`import DS from "ember-data"`

VideoAsset = AssetValue.extend
  assetType: 'VIDEO'
  assetTypeDescription: 'video'
  assetBodyTemplate: 'video_body'
  assetTypeIcon: 'fa fa-video-camera'
  assetTypeImageSrc: '/dummy.svg'
  specialOptionsTemplate: 'video_options'
  displayTemplate: 'video_display'
  url: DS.attr('string')

`export default VideoAsset`

