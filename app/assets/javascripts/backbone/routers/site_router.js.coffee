class Misadventure.SiteRouter extends Backbone.Router
    
  routes:
    '': 'books'
    'books': 'books'

  books: ->
    @booksView ||= new Misadventure.BooksView
      el: $('.books')[0]
      model: new Misadventure.BookList
    @booksView.model.collection.url = '/books.json'
