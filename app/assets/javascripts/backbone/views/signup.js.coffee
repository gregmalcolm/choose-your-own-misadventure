App = window.Misadventure || {}
class App.Views.Signup extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/signup"] 

  initialize: ->
    @model = new App.Models.UserRegistration()

  onRender: ->
    $(@el).html(@template())

  events:
    'submit form': 'signup'

  signup: (e) ->
    e.preventDefault()
    @model.signup()
