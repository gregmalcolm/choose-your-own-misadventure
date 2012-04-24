# Bootstrap for loading javascript objcts on page load
# Not 'bootstrap' as in 'bootstrap.js'

unless window.jasmineSpecsAreRunning
  $.ajaxSetup
    beforeSend: (xhr) ->
      xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))

  $ ->
    window.router = new Misadventure.SiteRouter()
    Backbone.history.start()

    preloadedModels = window.preloadModels ? {}
    window.router.booksView.collection.reset(preloadedModels.books ? {})
