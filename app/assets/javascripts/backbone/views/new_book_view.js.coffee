class Misadventure.NewBookView extends Backbone.View
  template: JST["backbone/templates/new_book"] 
  
  render: ->
    $(@el).html(@template())
    @
