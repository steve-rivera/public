`import Ember from "ember"`

# array: an Ember.Array of ember data objects
# field: a string.
#   Each object in array should have
#     field: DS.attr('number')
#   as one of its attributes.
#   The objects in array should be ordered ascending by index.
# index: an index.  0 <= index < array.get('length')
# shift: a number.  0 <= (index+shift) < array.get('length')
# return: a promise that saves the objects in array with new
#         indices such that if array is resorted, array[index]
#         will have been shifted shift indices to the right.
reorder = (array, field, index, shift) ->
  return new Ember.RSVP.Promise((resolve) -> resolve()) if shift == 0

  dir = shift / Math.abs(shift)
  promises = []
  jsArray = array.toArray()
  original = jsArray[index]
  while shift != 0
    promises.push(jsArray[index+dir].set('index', index).save())
    index += dir
    shift -= dir
  promises.push(original.set('index', index).save())

  Ember.RSVP.Promise.all(promises)

`export default reorder`
