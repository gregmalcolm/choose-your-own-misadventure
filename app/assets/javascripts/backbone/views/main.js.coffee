App = window.Misadventure || {}
class App.Views.Main extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/main"]

  onRender: ->
    $(@el).html(@template())
    @
