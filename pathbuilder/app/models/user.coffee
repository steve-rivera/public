`import DS from 'ember-data'`

User =  DS.Model.extend
  firstname: DS.attr('string')
  lastname: DS.attr('string')

  smallImageSrc: '/steve_rivera.jpg'

  shortName: (->
    "#{@get('firstname')} #{@get('lastname')[0]}."
  ).property 'firstname', 'lastname'

`export default User`

