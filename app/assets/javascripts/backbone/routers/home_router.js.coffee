App = window.Misadventure || {}
class App.Routers.HomeRouter extends Backbone.Router
  routes:
    '': 'home'

  home: ->
    App.layout.contentRegion.show(new App.Views.Books.Books())
     
