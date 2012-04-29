class Misadventure.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 
 
  events:
    'mouseenter .book-listing': 'bookMouseEnter'
    'mouseleave .book-listing': 'bookMouseLeave'

  initialize: ->
    @collection.on 'change', @render, @
    @collection.on 'reset', @render, @
    @newTaskView = new Misadventure.NewBookView collection: @collection

  render: ->
    $(@el).html(@template({books: @collection}))
    $('#book-list').append($("<li/>", { html: @newTaskView.render().el }))
    @

  bookMouseEnter: (e) -> 
    #$(e.currentTarget).find('.button-delete').show()
  
  bookMouseLeave: (e)->
