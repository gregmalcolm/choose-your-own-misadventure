class Misadventure.Collections.BookCollection extends Backbone.Collection
  model: Misadventure.Models.Book 
  url: -> "/books.json"

  comparator: (book) ->
    date = book.get('created_at')
    if date
      order = Date.parse(date) * 1
    else
      order = Date.now() * 1
    -order  

  #initialize: ->
    #preloadedModels = window.preloadModels ? {}
    #  router.booksView.model.collection.reset(preloadedModels.books ? {})  
    #console.log(Misadventure.preloadModels)
    #@reset(Misadventure.preloadModels.books ? {})
