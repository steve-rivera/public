`import AssetValue from "pathbuilder/models/asset_value"`

TextAsset = AssetValue.extend()

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
