# Bootstrap for loading javascript objcts on page load
# Not 'bootstrap' as in 'bootstrap.js'
    
Misadventure = new Backbone.Marionette.Application()

Misadventure.Views = {}
Misadventure.Views.Layouts = {}
Misadventure.Models = {}
Misadventure.Collections = {}
Misadventure.Routers = {}
Misadventure.Helpers = {}

Misadventure.preloaded = {
  books: null
}

Misadventure.layouts = {}

Misadventure.addRegions { books: '#main' }

Misadventure.bind "initialize:after", ->
  preloadedModels = window.preloadModels ? {}

  window.router = new Misadventure.Routers.SiteRouter()
  Backbone.history.start()

window.Misadventure = Misadventure

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
