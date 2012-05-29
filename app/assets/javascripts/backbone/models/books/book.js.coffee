App = window.Misadventure || {}
class App.Models.Books.Book extends Backbone.Model
  url: ->
    if @id
      "/books/#{@id}"
    else
      "/books"
