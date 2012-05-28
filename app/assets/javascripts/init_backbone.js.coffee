App = new Backbone.Marionette.Application()

App.Views = {}
App.Views.Layouts = {}
App.Views.Unauthenticated = {}

App.Models = {}
App.Collections = {}

App.Routers = {}
App.Routers.Unauthenticated = {}

App.Helpers = {}

App.preloaded = {
  books: null
}

App.containerRegion = new Backbone.Marionette.Region { el: "#container" }

App.bind "initialize:after", ->
  preloadedModels = window.preloadModels ? {}
  
  App.layout = new App.Views.Layouts.Container()

  App.containerRegion.show(App.layout)
  App.layout.navigationRegion.show(new App.Views.Navigation)
  if App.currentUser
    App.layout.mainRegion.show(new App.Views.Main)
    #App.Routers.HomeRouter = new App.Routers.HomeRouter()
  else
    App.layout.mainRegion.show(new App.Views.Unauthenticated.Main)
    App.Routers.Unauthenticated.HomeRouter = new App.Routers.Unauthenticated.HomeRouter()

  App.Routers.NavigationRouter = new App.Routers.NavigationRouter()
  Backbone.history.start()

window.Misadventure = App

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
