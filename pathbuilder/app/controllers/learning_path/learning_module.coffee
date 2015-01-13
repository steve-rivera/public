`import Ember from "ember"`

standardViewStyle = 'Standard View'
condensedViewStyle = 'Condensed View'
expandedViewStyle = 'Expanded View'

LearningModuleController = Ember.ObjectController.extend
  viewStyles: [ standardViewStyle, condensedViewStyle, expandedViewStyle ]
  viewStyle: standardViewStyle

  innerTemplateName: (->
    'learning_path/learning_module_' + switch @get('viewStyle')
      when standardViewStyle then 'standard'
      when condensedViewStyle then 'condensed'
      when expandedViewStyle then 'expanded'
      else throw "Unrecognized viewStyle: #{@get('viewStyle')}"
  ).property 'viewStyle'

`export default LearningModuleController`
