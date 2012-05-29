App = window.Misadventure || {}
class App.Views.Unauthenticated.Main extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/unauthenticated/main"]

  onRender: ->
    $(@el).html(@template())
    @
