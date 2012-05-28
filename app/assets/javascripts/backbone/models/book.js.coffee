App = window.Misadventure || {}
class App.Models.Book extends Backbone.Model
  url: ->
    if @id
      "/books/#{@id}"
    else
      "/books"
