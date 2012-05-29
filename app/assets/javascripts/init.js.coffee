App = new Backbone.Marionette.Application()
App.initStructure = ->
  @Views = 
    Layouts: {}
    Unauthenticated: {}
    Books: {}
    Users: {}

  @Models =
    Books: {}
    Users: {}

  @Routers =
    Unauthenticated: {}

  @Helpers = {}

  @Regions = {}

  @layouts = {}
  @routers = {}

  @preloaded =
    books: null

App.vent.on "authentication:logged_in", ->
  App.layout = App.layouts.authenticated
  App.containerRegion.show(App.layout)

App.vent.on "authentication:logged_out", ->  
  App.layout = App.layouts.unauthenticated
  App.containerRegion.show(App.layout)

App.on "initialize:after", ->
  @containerRegion = new @Regions.Container()
  preloadedModels = window.preloadModels ? {}
    
  @layouts.unauthenticated = new @Views.Layouts.Unauthenticated()
  @layouts.authenticated = new @Views.Layouts.Authenticated()
    
  if @currentUser
    @vent.trigger("authentication:logged_in")
  else
    @vent.trigger("authentication:logged_out")

  Backbone.history.start()

App.initStructure()
window.Misadventure = App

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
