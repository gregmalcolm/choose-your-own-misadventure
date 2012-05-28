App = window.Misadventure || {}
class App.Views.Navigation extends Backbone.View
  template: JST["backbone/templates/navigation"]

  render: ->
    $(@el).html(@template())
    @
