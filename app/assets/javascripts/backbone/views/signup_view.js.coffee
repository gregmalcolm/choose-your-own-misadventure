class Misadventure.Views.SignupView extends Backbone.View
  template: JST["backbone/templates/signup"] 

  render: ->
    $(@el).html(@template())
    @
