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

Misadventure.containerRegion = new Backbone.Marionette.Region { el: "#container" }

Misadventure.bind "initialize:after", ->
  preloadedModels = window.preloadModels ? {}
  
  Misadventure.layout = new Misadventure.Views.Layouts.Main()

  Misadventure.containerRegion.show(Misadventure.layout)
#  Misadventure.Views.Regions.Navigation.show(Misadventure.Views.Navigation)

#  window.router = new Misadventure.Routers.SiteRouter()
#  Backbone.history.start()

window.Misadventure = Misadventure

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
