class Misadventure.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 
 
  events:
    'mouseenter .book-listing': 'bookMouseEnter'
    'mouseleave .book-listing': 'bookMouseLeave'

  initialize: ->
    @model.collection.on 'change', @render, @
    @model.collection.on 'reset', @render, @
    @newTaskView = new Misadventure.NewBookView model: @model

  render: ->
    $(@el).html(@template({books: @model.collection}))
    $('#book-list').append($("<li/>", { html: @newTaskView.render().el }))
    @

  bookMouseEnter: (e) -> 
    #$(e.currentTarget).find('.button-delete').show()
  
  bookMouseLeave: (e)->
