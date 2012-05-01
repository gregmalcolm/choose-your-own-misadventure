class Misadventure.BookCollection extends Backbone.Collection
  model: Misadventure.Book 
  url: -> "/"

  comparator: (book) ->
    date = book.get('created_at')
    if date
      order = Date.parse(date) * 1
    else
      order = Date.now() * 1
    -order  
