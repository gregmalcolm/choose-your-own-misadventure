App = new Backbone.Marionette.Application()

App.Views = {}
App.Views.Layouts = {}
App.Views.Unauthenticated = {}

App.Models = {}
App.Collections = {}

App.Routers = {}
App.Routers.Unauthenticated = {}

App.Helpers = {}

App.Regions = {}

App.layouts = {}
App.routers = {}

App.preloaded = {
  books: null
}

App.bind "initialize:after", ->
  App.containerRegion = new App.Regions.Container()
  preloadedModels = window.preloadModels ? {}
  
  App.layouts.unauthenticated = new App.Views.Layouts.Unauthenticated()
  App.layouts.authenticated = new App.Views.Layouts.Authenticated()
  
  if App.currentUser
    App.layout = App.layouts.authenticated
  else
    App.layout = App.layouts.unauthenticated

  App.containerRegion.show(App.layout)

  #if App.currentUser
    #App.routers.homeRouter = new App.Routers.HomeRouter()
    #else
    #App.routers.homeRouter = new App.Routers.Unauthenticated.HomeRouter()

  App.routers.navigationRouter = new App.Routers.NavigationRouter()
  Backbone.history.start()

window.Misadventure = App

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
