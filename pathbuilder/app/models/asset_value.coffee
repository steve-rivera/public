`import DS from "ember-data"`

AssetValue = DS.Model.extend
  assetType: null
  assetTypeDescription: ''
  assetTypeImageSrc: ''
  assetBodyTemplate: null
  specialOptionsTemplate: null
  displayTemplate: null

`export default AssetValue`
