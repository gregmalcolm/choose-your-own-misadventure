class Misadventure.Routers.SiteRouter extends Backbone.Router
  routes:
    '': 'books'
    'books': 'books'

  books: ->
    @booksView ||= new Misadventure.Views.BooksView
      el: $('#books')[0]
      model: new Misadventure.Models.BookList
    @booksView.model.collection.url = '/books.json'
