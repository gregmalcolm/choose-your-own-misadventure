App = window.Misadventure || {}
class App.Models.UserLogin extends Backbone.Model
  url: '/users/sign_in.json'
  paramRoot: 'user'

  defaults:
    email: "",
    password: "",

  update: ->
    @set 
      email: $('#email').val()
      password: $('#password').val()

  login: ->
    @update()
    @save(@attributes,
      success: (userSession, response) ->
        App.currentUser = new App.Models.User(response)
        App.vent.trigger("authentication:logged_in") 
      error: (userSession, response) -> 
        console.log "error"
        console.log userSession
        console.log response
    )
         
