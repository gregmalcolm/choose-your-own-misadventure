App = window.Misadventure || {}
class App.Views.Users.Login extends Backbone.Marionette.ItemView
  template: JST["backbone/templates/users/login"]

  initialize: ->
    @model = new App.Models.Users.UserLogin()
    @errorView = new App.Views.ErrorNotice()

  onRender: ->
    $(@el).html(@template())
    @

  events:
    'submit form': 'login'

  login: (e) ->
    e.preventDefault()
    @model.update
    self = this
    @model.save(@attributes,
      success: (userSession, response) ->
        App.currentUser = new App.Models.Users.User(response)
        window.location.href = ''
      error: (userSession, response) ->
        self.errorView.showError("There was a problem with your login username or password")
    )
