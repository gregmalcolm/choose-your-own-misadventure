class Misadventure.SiteRouter extends Backbone.Router
    
  routes:
    '': 'books'

  books: ->
    @booksView ||= new Misadventure.BooksView
      el: $('.main')[0]
      collection: new Misadventure.BookList [
        {name: "Interview with the Nompire"}
        {name: "Help, a Frickin' Temple Is About to Fall On My Head And I Left My Umbrella at Home"}
        {name: "LOL Zombie Hamsters"}
      ]
    @booksView.render()
