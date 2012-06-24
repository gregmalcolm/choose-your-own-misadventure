App = window.Misadventure || {}
class App.Models.ErrorNotice extends Backbone.Model
  setMessage: (message) ->
    @set(message: message)

  message: ->
    @get('message')
