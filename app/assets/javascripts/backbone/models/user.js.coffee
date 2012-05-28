App = window.Misadventure || {}
class App.Models.User extends Backbone.Model
  url: '/users/sign_out.json'
  paramRoot: 'user'

  signout: ->
    console.log "signout"
    @destroy(
      success: (userSignout, response) ->
        App.currentUser = null
        App.vent.trigger("authentication:logged_out") 
      error: (userSession, response) -> 
        console.log "error"
        console.log userSession
        console.log response
    )
        
