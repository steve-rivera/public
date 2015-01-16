`import DS from 'ember-data'`

PathDetail =  DS.Model.extend
  title: DS.attr('string')
  introduction: DS.attr('string')
  prerequisites: DS.attr('string')
  completion: DS.attr('string')
  resources: DS.attr('string')
  publishedAt: DS.attr('date')

`export default PathDetail`
