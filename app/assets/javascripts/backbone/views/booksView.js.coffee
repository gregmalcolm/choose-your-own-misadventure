class Misadventure.Views.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 

  render: ->
    $(this.el).html(@template())
    @  
