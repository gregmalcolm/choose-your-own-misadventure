EnterKey = 13

class Misadventure.NewBookView extends Backbone.View
  template: JST["backbone/templates/new_book"] 

  events:
    'keypress #new-book': 'createBook'  

  render: ->
    $(@el).html(@template())
    @delegateEvents()
    @

  createBook: (event) ->
    if (event.keyCode is EnterKey)
      event.preventDefault()
      @collection.addBook($('#new-book').val())
#      nameText = _.trim($('#new-book').val())
#      if nameText != ''
#        attributes = { name: nameText }
#        @collection.create(attributes)
