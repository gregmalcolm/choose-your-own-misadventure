App = window.Misadventure || {}
class App.Views.Books.Books extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/books/books"] 
 
  events:
    'mouseenter .book-listing'  : 'mouseEnterBook'
    'mouseleave .book-listing'  : 'mouseLeaveBook'
    'click      .book-listing'  : 'clickBook'
    'click      .button-delete' : 'deleteBook'


  initialize: ->
    @model = new App.Models.Books.BookList() 
    @model.collection.on 'remove'                     , @render,           @
    @model.collection.on 'change'                     , @render,           @
    @model.collection.on 'reset'                      , @render,           @
    @model.on            'change:prevDeleteTarget'    , @hideDeleteButton, @
    @model.on            'change:currentDeleteTarget' , @showDeleteButton, @

    @newTaskView = new App.Views.Books.NewBook({model: @model})
    
  render: ->
    el = $(@el).html(@template({books: @model.collection}))
    $('#book-list', el).append($("<li/>", { html: @newTaskView.render().el }))
    $
  
  mouseEnterBook: (e) -> 
    el=$(e.currentTarget)[0]
    if el
      @model.changeDeleteTargetAfterPause(el.id)
  
  mouseLeaveBook: (e) ->
    el=$(e.currentTarget)[0]
    if el
      @model.lostDeleteTarget(el.id)

  clickBook: (e) ->
    e.preventDefault()
    el=$(e.currentTarget)[0]
    if el
      @model.changeDeleteTarget(el.id)

  deleteBook: (e) ->
    el=$(e.currentTarget)[0]
    if el
      el = $(el).parents('.book-listing')[0]
    if el
      if confirm("Really? We can trash it?")
        @model.deleteBook(el.id)
      
  hideDeleteButton: ->
    id = @model.prevDeleteTarget()
    if id
      target = $("##{id}").find('.button-delete')
      target.slideUp(150)

  showDeleteButton: ->
    id = @model.currentDeleteTarget()
    if id
      target = $("##{id}").find('.button-delete')
      target.slideDown(150)

