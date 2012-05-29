App = window.Misadventure || {}
class App.Routers.NavbarItemsRouter extends Backbone.Router
  routes:
    'signout' : 'signout'

  signout: ->
    @view = new App.Views.Users.Signout() 
    App.layout.contentRegion.show(@view)
    @view.signout()


