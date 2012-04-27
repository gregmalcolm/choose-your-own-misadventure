class Misadventure.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 

  initialize: ->
    @collection.on 'add', @render, @
    @collection.on 'reset', @render, @
    @newTaskView = new Misadventure.NewBookView collection: @collection

  render: ->
    $(@el).html(@template({books: @collection}))
    $('#book_list').append($("<li/>", { html: @newTaskView.render().el }))
    @

