# Bootstrap for loading javascript objcts on page load
# Not 'bootstrap' as in 'bootstrap.js'
    
Misadventure = new Backbone.Marionette.Application()

Misadventure.Views = {}
Misadventure.Views.Layouts = {}
Misadventure.Models = {}
Misadventure.Collections = {}
Misadventure.Routers = {}
Misadventure.Helpers = {}

Misadventure.layouts = {}

Misadventure.addRegions { books: '#books' }

Misadventure.bind "initialize:after", ->
  window.router = new Misadventure.Routers.SiteRouter()
  Backbone.history.start()

  preloadedModels = window.preloadModels ? {}
  window.router.booksView.model.collection.reset(preloadedModels.books ? {})  

window.Misadventure = Misadventure

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
