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
    unless target == @currentDeleteTarget()
      @set(lastDeleteTarget: @currentDeleteTarget())
      @set(currentDeleteTarget: target)
    @

  lostDeleteTarget: (target) ->
    if target == @currentDeleteTarget()
      @changeDeleteTarget null
    @

  deleteBook: (book_id_tag) ->
    id = _.trim(book_id_tag).match(/[0-9]+$/)
    if id
      @collection.get(id).destroy()
