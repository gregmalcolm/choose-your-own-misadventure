App = new Backbone.Marionette.Application()

App.Views = {}
App.Views.Layouts = {}
App.Models = {}
App.Collections = {}
App.Routers = {}
App.Helpers = {}

App.preloaded = {
  books: null
}

App.containerRegion = new Backbone.Marionette.Region { el: "#container" }

App.bind "initialize:after", ->
  preloadedModels = window.preloadModels ? {}
  
  App.layout = new App.Views.Layouts.Container()

  App.containerRegion.show(App.layout)
  App.layout.navigationRegion.show(new Misadventure.Views.Navigation)
  window.router = new Misadventure.Routers.SiteRouter()
  Backbone.history.start()

window.Misadventure = App

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
