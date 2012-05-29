App = window.Misadventure || {}
class App.Views.Unauthenticated.NavbarItems extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/unauthenticated/navbar_items"]

  onRender: ->
    $(@el).html(@template())
    @

