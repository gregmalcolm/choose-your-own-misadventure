class Misadventure.Routers.SiteRouter extends Backbone.Router
  routes:
    '': 'home'

  home: ->    
    @booksView ||= new Misadventure.Views.BooksView
      el: $('#books')[0]
    @booksView.render()
