class Misadventure.Views.HomeView extends Backbone.View
  template: JST["backbone/templates/home"] 

  render: ->
    $(@el).html(@template())
    @
