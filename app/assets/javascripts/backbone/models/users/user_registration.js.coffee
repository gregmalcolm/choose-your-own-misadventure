App = window.Misadventure || {}
class App.Models.Users.UserRegistration extends Backbone.Model
  url: '/users.json'
  paramRoot: 'user'

  defaults:
    email: "",
    password: "",
    password_confirmation: ""

  update: ->
    @set 
      email: $('#email').val()
      password: $('#password').val()
      password_confirmation: $('#confirm-password').val()

