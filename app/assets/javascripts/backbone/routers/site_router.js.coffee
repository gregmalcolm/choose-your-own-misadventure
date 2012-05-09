class Misadventure.Routers.SiteRouter extends Backbone.Router
  routes:
    '': 'home'
    'login' : 'login'
    'signup' : 'signup'

  home: ->
    if Misadventure.currentUser
      @booksView ||= new Misadventure.Views.BooksView
        el: $('#main')[0]
      @booksView.render()
    else
      @homeView || = new Misadventure.Views.HomeView
        el: $('#main')[0]
      @homeView.render()
  
  login: ->
    @home()
    @loginView ||= new Misadventure.Views.LoginView
      el: $('#login')[0]
    @loginView.render()

  signup: ->
    @home()
    @signupView ||= new Misadventure.Views.SignupView
      el: $('#signup')[0]
    @signupView.render()

