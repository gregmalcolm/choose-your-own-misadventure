class Misadventure.BookList extends Backbone.Collection
  model: Misadventure.Book 
  url: -> "/"

  addBook: ->
    console.log "blah de blah"
    #@render
