`import DS from 'ember-data'`

LearningPath =  DS.Model.extend
  title: DS.attr('string')
  introduction: DS.attr('string')
  prerequisites: DS.attr('string')
  completion: DS.attr('string')
  resources: DS.attr('string')

longLorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem. Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at porttitor sem. Aliquam erat volutpat. Donec placerat nisl magna, et faucibus arcu condimentum."
shortLorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."

LearningPath.reopenClass
  FIXTURES: [
    {
      id: 1
      title: 'My Learning Path'
      introduction: longLorem
      prerequisites: (shortLorem for i in [0...3]).join('\n')
      completion: longLorem
      resources: longLorem
    }
  ]

`export default LearningPath`
