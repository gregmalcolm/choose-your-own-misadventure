class Misadventure.SiteRouter extends Backbone.Router
    
  routes:
    '': 'books'

  books: ->
    @booksView ||= new Misadventure.BooksView
      el: $('.books')[0]
      collection: new Misadventure.BookList
    @booksView.render()
