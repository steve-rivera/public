`import AssetValue from "pathbuilder/models/asset_value"`

TextAsset = AssetValue.extend
  assetType: 'TEXT BOX'
  assetTypeDescription: 'text'
  assetTypeIcon: 'fa fa-file-text-o'
  assetTypeImageSrc: '/dummy.svg'
  assetBodyTemplate: 'text_body'
  specialOptionsTemplate: 'text_options'
  displayTemplate: 'text_display'

TextAsset.reopenClass
  FIXTURES: [
    {
      id: 1
    }
    {
      id: 2
    }
  ]

`export default TextAsset`
