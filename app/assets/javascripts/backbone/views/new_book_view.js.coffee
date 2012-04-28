EnterKey = 13

class Misadventure.NewBookView extends Backbone.View
  template: JST["backbone/templates/new_book"] 

  events:
    'keypress #new-book': 'keypress'
    'focus #new-book'   : 'showSubmit'
    'blur #new-book'    : 'hideSubmit'
    'click #create'     : 'submit',

  render: ->
    $(@el).html(@template())
    @delegateEvents()
    @

  keypress: (event) ->
    if (event.keyCode is EnterKey)
      event.preventDefault()
      @addBook()
      
  submit: (event) ->
    event.preventDefault()
    @addBook()

  showSubmit: (event) ->
    $('#create').fadeIn('fast')

  hideSubmit: (event) ->
    $('#create').fadeOut()

  addBook: ->
    @collection.addBook($('#new-book').val())

