App = window.Misadventure || {}
class App.Views.Login extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/login"]

  initialize: ->
    @model = new App.Models.UserLogin()

  onRender: ->
    $(@el).html(@template())
    @

  events:
    'submit form': 'login'

  login: (e) ->
    e.preventDefault()
    @model.login()
