App = window.Misadventure || {}
class App.Views.Login extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/login"]

  onRender: ->
    $(@el).html(@template())
    @
