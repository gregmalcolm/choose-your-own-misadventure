App = window.Misadventure || {}
class App.Routers.NavigationRouter extends Backbone.Router
  routes:
    'login'   : 'login'
    'signup'  : 'signup'
    'signout' : 'signout'

  login: ->  
    App.layout.contentRegion.show(new App.Views.Login())

  signup: -> 
    App.layout.contentRegion.show(new App.Views.Signup())

  signout: ->
    @view = new App.Views.Signout() 
    App.layout.contentRegion.show(@view)
    @view.signout()


