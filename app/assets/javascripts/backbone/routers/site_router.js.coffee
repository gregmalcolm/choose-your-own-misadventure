class Misadventure.SiteRouter extends Backbone.Router
    
  routes:
    '': 'books'

  books: ->
    @booksView ||= new Misadventure.BooksView
      el: $('.main')[0]
      collection: new Misadventure.BookList [
        {name: "bob"}
        {name: "jane"}
      ]
    @booksView.render()
