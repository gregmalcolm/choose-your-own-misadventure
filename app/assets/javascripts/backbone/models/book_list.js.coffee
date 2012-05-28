App = window.Misadventure || {}
class App.Models.BookList extends Backbone.Model
  initialize: (books) ->
    @collection = new App.Collections.BookCollection(App.preloaded.books)
    @on 'change:currentDeleteTarget', @updateDesiredTarget, @

  addBook: (nameText) ->
    nameText = _.trim(nameText)
    unless nameText == ''
      attributes = { name: nameText }
      @collection.create(attributes)
    else
      $('#new-book').focus()
    @

  prevDeleteTarget: ->
    @get('prevDeleteTarget')

  currentDeleteTarget: ->
    @get('currentDeleteTarget')

  changeDeleteTarget: (target) ->
    unless target == @currentDeleteTarget()
      @set(prevDeleteTarget: @currentDeleteTarget())
      @set(currentDeleteTarget: target)
    @

  changeDeleteTargetAfterPause: (target) ->
    @desiredTarget = target
    setTimeout( (=>
      if @desiredTarget == target
        @changeDeleteTarget(target)
    ), 500)
    @
   
  updateDesiredTarget: ->
    @desiredTarget = null

  lostDeleteTarget: (target) ->
    @updateDesiredTarget()
    if target ==  @currentDeleteTarget()
      @changeDeleteTarget null
    @

  deleteBook: (book_id_tag) ->
    id = _.trim(book_id_tag).match(/[0-9]+$/)
    if id
      @collection.get(id).destroy()
    @

