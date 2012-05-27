App = window.Misadventure || {}
class App.Routers.SiteRouter extends Backbone.Router
  routes:
    '': 'home'
    'login' : 'login'
    'signup' : 'signup'

  home: ->
    if App.currentUser
      @booksView ||= new App.Views.BooksView
        el: $('#main')[0]
      @booksView.render()
    else      
      @homeView || = new App.Views.HomeView
        el: $('#main')[0]
      @homeView.render()
  
  login: ->
    @home()
    @loginView ||= new App.Views.LoginView
      el: $('#login')[0]
    @loginView.render()

  signup: ->
    @home()
    @signupView ||= new App.Views.SignupView
      el: $('#signup')[0]
    @signupView.render()

