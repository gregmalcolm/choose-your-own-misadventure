class Misadventure.Views.Layouts.Main extends Backbone.Marionette.Layout
  template: JST["backbone/templates/layouts/main"]

  regions:
    navigation: "#navigation"
    main:       "#main"

  render: ->
    $(@el).html(@template())
