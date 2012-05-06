class Misadventure.Collections.BookCollection extends Backbone.Collection
  model: Misadventure.Models.Book 
  url: -> "/"

  comparator: (book) ->
    date = book.get('created_at')
    if date
      order = Date.parse(date) * 1
    else
      order = Date.now() * 1
    -order  
