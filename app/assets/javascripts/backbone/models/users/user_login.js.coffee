App = window.Misadventure || {}
class App.Models.Users.UserLogin extends Backbone.Model
  url: '/users/sign_in.json'
  paramRoot: 'user'

  defaults:
    email: "",
    password: "",

  update: ->
    @set 
      email: $('#email').val()
      password: $('#password').val()
