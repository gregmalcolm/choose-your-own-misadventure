class Misadventure.BookList extends Backbone.Model
  initialize: ->
    @collection = new Misadventure.BookCollection

  addBook: (nameText) ->
    nameText = _.trim(nameText)
    unless nameText == ''
      attributes = { name: nameText }
      @collection.create(attributes)
    else
      $('#new-book').focus()

  lastDeleteTarget: ->
    @get('lastDeleteTarget')

  currentDeleteTarget: ->
    @get('currentDeleteTarget')

  changeDeleteTarget: (target) ->
    @set(lastDeleteTarget: @currentDeleteTarget())
    @set(currentDeleteTarget: target)
    @

  lostDeleteTarget: (target) ->
    if target == @currentDeleteTarget()
      @changeDeleteTarget null
    @
