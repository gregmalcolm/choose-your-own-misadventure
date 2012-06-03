App = window.Misadventure || {}
class App.Routers.Unauthenticated.HomeRouter extends Backbone.Router
  routes:
    '': 'home'

  home: ->
    App.layout.contentRegion.show(new App.Views.Users.Login())
    
