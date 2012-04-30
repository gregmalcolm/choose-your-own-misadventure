class Misadventure.Book extends Backbone.Model
  url: ->
    if @id
      "/books/#{@id}"
    else
      "/books"
