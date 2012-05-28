App = window.Misadventure || {}
class App.Views.Login extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/login"]

  render: ->
    $(@el).html(@template())
    @
