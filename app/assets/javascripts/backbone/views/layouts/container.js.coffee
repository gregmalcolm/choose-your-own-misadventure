class Misadventure.Views.Layouts.Container extends Backbone.Marionette.Layout
  template: JST["backbone/templates/layouts/container"]

  regions:
    navigationRegion: "#navigation"
    mainRegion:       "#main"

  render: ->
    @initializeRegions()
    $(@el).html(@template())
    @
