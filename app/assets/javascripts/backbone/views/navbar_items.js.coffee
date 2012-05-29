App = window.Misadventure || {}
class App.Views.NavbarItems extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/navbar_items"]

  onRender: ->
    $(@el).html(@template())
    @

