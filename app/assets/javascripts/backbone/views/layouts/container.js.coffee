App = window.Misadventure || {}
class App.Views.Layouts.Container extends Backbone.Marionette.Layout
  template: JST["backbone/templates/layouts/container"]

  regions:
    navigationRegion: "#navigation"
    mainRegion:       "#main"
    contentRegion:    "#content"

  render: ->
    @initializeRegions()
    $(@el).html(@template())
    @
