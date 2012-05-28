App = window.Misadventure || {}
class App.Views.Unauthenticated.Main extends Backbone.View
  template: JST["backbone/templates/unauthenticated/main"]

  render: ->
    $(@el).html(@template())
    @
