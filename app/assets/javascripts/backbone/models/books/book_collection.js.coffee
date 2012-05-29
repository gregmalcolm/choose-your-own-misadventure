App = window.Misadventure || {}
class App.Models.Books.BookCollection extends Backbone.Collection
  model: App.Models.Books.Book 
  url: -> "/books.json"

  comparator: (book) ->
    date = book.get('updated_at')
    if date
      order = Date.parse(date) * 1
    else
      order = Date.now() * 1
    -order  

  #initialize: ->
    #preloadedModels = window.preloadModels ? {}
    #  router.books.model.collection.reset(preloadedModels.books ? {})  
    #console.log(Misadventure.preloadModels)
    #@reset(Misadventure.preloadModels.books ? {})
