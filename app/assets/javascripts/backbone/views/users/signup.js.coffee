App = window.Misadventure || {}
class App.Views.Users.Signup extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/users/signup"] 

  initialize: ->
    @model = new App.Models.Users.UserRegistration()

  onRender: ->
    $(@el).html(@template())

  events:
    'submit form': 'signup'

  signup: (e) ->
    e.preventDefault()
    @model.signup()
