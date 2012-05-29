App = window.Misadventure || {}
class App.Routers.NavigationRouter extends Backbone.Router
  routes:
    'login'   : 'login'
    'signup'  : 'signup'
    'signout' : 'signout'

  login: ->  
    App.layout.contentRegion.show(new App.Views.Users.Login())

  signup: -> 
    App.layout.contentRegion.show(new App.Views.Users.Signup())

  signout: ->
    @view = new App.Views.Users.Signout() 
    App.layout.contentRegion.show(@view)
    @view.signout()


