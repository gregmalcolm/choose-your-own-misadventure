class Misadventure.Views.LoginView extends Backbone.View
  template: JST["backbone/templates/login"] 

  render: ->
    $(@el).html(@template())
    @
