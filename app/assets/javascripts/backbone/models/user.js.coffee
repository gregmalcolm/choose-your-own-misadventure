App = window.Misadventure || {}
class App.Models.User extends Backbone.Model
  url: '/users/sign_out.json'
  paramRoot: 'user'

  signout: ->
    console.log "signout"
    @destroy(
      success: (userSignout, response) ->
        App.currentUser = null
        window.location.href = '';
      error: (userSession, response) -> 
        console.log "error"
        console.log userSession
        console.log response
    )
        
