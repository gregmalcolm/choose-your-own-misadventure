App = window.Misadventure || {}
class App.Views.Navigation extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/navigation"]

  onRender: ->
    $(@el).html(@template())
    @

