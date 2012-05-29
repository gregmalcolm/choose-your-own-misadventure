App = window.Misadventure || {}
class App.Models.UserRegistration extends Backbone.Model
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

  signup: ->
    @update()
    @save(@attributes,
      success: (userSession, response) ->
        App.currentUser = new App.Models.User(response)
        window.location.href = ''
      error: (userSession, response) -> 
        console.log "error"
        console.log userSession
        console.log response
    )
      
      
