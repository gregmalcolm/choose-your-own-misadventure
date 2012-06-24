App = window.Misadventure || {}
class App.Views.ErrorNotice extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/error_notice"]

  initialize: ->
    @model = new App.Models.ErrorNotice()

  onRender: ->
    $("#error-notice").html(@template({message: @model.message()}))
    @

  showError: (message) ->
    @model.setMessage(message)
    @render()
