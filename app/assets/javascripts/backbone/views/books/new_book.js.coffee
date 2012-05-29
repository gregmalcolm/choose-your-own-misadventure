EnterKey = 13

App = window.Misadventure || {}
class App.Views.Books.NewBook extends Backbone.View
  template: JST["backbone/templates/books/new_book"] 

  events:
    'keypress #new-book' : 'keypress'
    'focus    #new-book' : 'showSubmit'
    'blur     #new-book' : 'hideSubmit'
    'click    #create'   : 'submit'

  render: ->
    $(@el).html(@template())
    @delegateEvents()
    @

  keypress: (e) ->
    if (e.keyCode is EnterKey)
      e.preventDefault()
      @addBook()
      
  submit: (e) ->
    e.preventDefault()
    @addBook()

  showSubmit: ->
    $('#create').fadeIn('fast')

  hideSubmit: ->
    $('#create').fadeOut()

  addBook: ->
    @model.addBook($('#new-book').val())
