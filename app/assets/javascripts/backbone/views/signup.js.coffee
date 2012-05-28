App = window.Misadventure || {}
class App.Views.Signup extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/signup"] 

  render: ->
    $(@el).html(@template())
    @
