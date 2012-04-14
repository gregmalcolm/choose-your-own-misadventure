class Misadventure.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 

  initialize: ->
    @collection.on 'add', @render, @
    @subviews = [
      new Misadventure.NewBookView collection: @collection
    ]

  render: ->
    $(@el).html(@template({books: @collection}))
    $('.book_listing').last().append subview.render().el for subview in @subviews
    @
