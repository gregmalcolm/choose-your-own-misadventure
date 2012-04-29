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

  getDeleteTarget: ->
    @collection.get('deleteTarget')

  changeDeleteTarget: (target) ->
    @collection.set('deleteTarget': target)
