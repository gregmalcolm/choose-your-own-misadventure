EnterKey = 13

class Misadventure.NewBookView extends Backbone.View
  template: JST["backbone/templates/new_book"] 

  events:
    'keypress #new-book': 'readKeys'  
    'click #create': 'submitBook',

  render: ->
    $(@el).html(@template())
    @delegateEvents()
    @

  readKeys: (event) ->
    if (event.keyCode is EnterKey)
      event.preventDefault()
      @addBook()
      
  submitBook: (event) ->
    event.preventDefault()
    @addBook()

  addBook: ->
    @collection.addBook($('#new-book').val())

