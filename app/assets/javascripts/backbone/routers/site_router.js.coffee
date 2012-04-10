class Misadventure.Routers.SiteRouter extends Backbone.Router
    
  routes:
    '': 'books'

  books: ->
    @booksView ||= new Misadventure.Views.BooksView
      el: $('.main')[0]
#      collection: new Misadventure.Models.Books()
    @booksView.render()
