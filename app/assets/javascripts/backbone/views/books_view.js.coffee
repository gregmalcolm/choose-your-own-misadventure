class Misadventure.BooksView extends Backbone.View
  template: JST["backbone/templates/books"] 
 
  events:
    'mouseenter .book-listing' : 'bookMouseEnter'
    'mouseleave .book-listing' : 'bookMouseLeave'
    'click      .book-listing' : 'bookClick'


  initialize: ->
    @model.collection.on 'change'                     , @render,           @
    @model.collection.on 'reset'                      , @render,           @
    @model.on            'change:lastDeleteTarget'    , @hideDeleteButton, @
    @model.on            'change:currentDeleteTarget' , @showDeleteButton, @

    @newTaskView = new Misadventure.NewBookView model: @model

  render: ->
    $(@el).html(@template({books: @model.collection}))
    $('#book-list').append($("<li/>", { html: @newTaskView.render().el }))
    @

  bookMouseEnter: (e) -> 
    el=$(e.currentTarget)[0]
    if el
      @model.changeDeleteTarget(el.id)
  
  bookMouseLeave: (e) ->
    el=$(e.currentTarget)[0]
    if el
      @model.lostDeleteTarget(el.id)

  bookClick: (e) ->    
    e.preventDefault()
    el=$(e.currentTarget)[0]
    if el
      @model.changeDeleteTarget(el.id)
      
  hideDeleteButton: ->
    id = @model.lastDeleteTarget()
    if id
      target = $("##{id}").find('.button-delete')
      target.slideUp(150)

  showDeleteButton: ->
    id = @model.currentDeleteTarget()
    if id
      target = $("##{id}").find('.button-delete')
      target.slideDown(150)

