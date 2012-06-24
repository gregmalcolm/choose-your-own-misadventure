App = window.Misadventure || {}
class App.Views.Users.Signup extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/users/signup"] 

  initialize: ->
    @model = new App.Models.Users.UserRegistration()
    @errorView = new App.Views.ErrorNotice()

  onRender: ->
    $(@el).html(@template())
    @

  events:
    'submit form': 'signup'

  signup: (e) ->
    self = this
    
    e.preventDefault()    
    @model.update()
    @model.save(@attributes,
      success: (userSession, response) ->
        App.currentUser = new App.Models.Users.User(response)
        window.location.href = ''
      error: (userSession, response) -> 
        self.errorView.showError("Sorry, a user with that email address already exists or the email was invalid")
    )
