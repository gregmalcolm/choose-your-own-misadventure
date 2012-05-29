App = window.Misadventure || {}
class App.Views.Users.Login extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/users/login"]

  initialize: ->
    @model = new App.Models.Users.UserLogin()

  onRender: ->
    $(@el).html(@template())
    @

  events:
    'submit form': 'login'

  login: (e) ->
    e.preventDefault()
    @model.login()
