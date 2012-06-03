App = window.Misadventure || {}
class App.Routers.Unauthenticated.NavbarItemsRouter extends Backbone.Router
  routes:
    'login'   : 'login'
    'signup'  : 'signup'

  login: ->
    App.layout.contentRegion.show(new App.Views.Users.Login())

  signup: ->
    App.layout.contentRegion.show(new App.Views.Users.Signup())
