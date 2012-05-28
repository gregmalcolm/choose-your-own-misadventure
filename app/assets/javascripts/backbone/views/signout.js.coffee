App = window.Misadventure || {}
class App.Views.Signout extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/blank"]

  onRender: ->
    $(@el).html(@template())

  signout: ->
    console.log "out"
    @model = App.currentUser
    if @model
      @model.signout()
