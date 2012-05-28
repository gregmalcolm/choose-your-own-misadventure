App = new Backbone.Marionette.Application()
App.initStructure = ->
  @Views = 
    Layouts : {}
    Unauthenticated : {}

  @Models = {}
  @Collections = {}

  @Routers =
    Unauthenticated : {}

  @Helpers = {}

  @Regions = {}

  @layouts = {}
  @routers = {}

  @preloaded =
    books: null

App.bind "initialize:after", ->
  @containerRegion = new @Regions.Container()
  preloadedModels = window.preloadModels ? {}
    
  @layouts.unauthenticated = new @Views.Layouts.Unauthenticated()
  @layouts.authenticated = new @Views.Layouts.Authenticated()
    
  if @currentUser
    @layout = @layouts.authenticated
  else
    @layout = @layouts.unauthenticated

  @containerRegion.show(@layout)
  Backbone.history.start()

App.initStructure()
window.Misadventure = App

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
