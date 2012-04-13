class Misadventure.Views.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 

  initialize: ->
    @subviews = [
      new Misadventure.Views.NewBookView collection: @collection
    ]

  render: ->
    $(@el).html(@template({books: @collection}))
    $(@el).append subview.render().el for subview in @subviews
    @  
