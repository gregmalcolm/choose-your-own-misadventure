App = window.Misadventure || {}
class App.Views.Main extends Backbone.View
  template: JST["backbone/templates/main"]

  render: ->
    $(@el).html(@template())
    @
