`import Ember from "ember"`

addSwapToArray = ->
  Ember.MutableArray.reopen
    swapObjects: (a, b) ->
      i = @indexOf(a)
      j = @indexOf(b)
      @replace(i, 1, [b])
      @replace(j, 1, [a])

    reinsertBeforeObject: (a, b) ->
      i = @indexOf(a)
      j = @indexOf(b)
      @insertAt(j, a)
      @removeAt((if i <= j then i else i+1), 1)

initialize = ->
  addSwapToArray()

`export default initialize`
