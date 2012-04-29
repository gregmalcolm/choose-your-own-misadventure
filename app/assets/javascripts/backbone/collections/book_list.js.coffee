class Misadventure.BookList extends Backbone.Collection
  model: Misadventure.Book 
  url: -> "/"

  addBook: (nameText)->
    nameText = _.trim(nameText)
    unless nameText == ''
      attributes = { name: nameText }
      @create(attributes)
    else
      $('#new-book').focus()

  getDeleteTarget: ->
    @get('deleteTarget')

  changeDeleteTarget: (target) ->
    @set('deleteTarget': target)
