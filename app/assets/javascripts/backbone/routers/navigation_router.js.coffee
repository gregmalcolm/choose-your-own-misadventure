App = window.Misadventure || {}
class App.Routers.NavigationRouter extends Backbone.Router
  routes:
    'login' : 'login'
    'signup' : 'signup'

  login: ->  
    App.layout.contentRegion.show(new App.Views.Login())

  signup: -> 
    App.layout.contentRegion.show(new App.Views.Signup())

