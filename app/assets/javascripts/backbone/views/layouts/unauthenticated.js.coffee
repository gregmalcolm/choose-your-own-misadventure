App = window.Misadventure || {}
class App.Views.Layouts.Unauthenticated extends App.Views.Layouts.Container
  onShow: (view) ->
    super
    @mainRegion.show(new App.Views.Unauthenticated.Main)
    App.routers.homeRouter = new App.Routers.Unauthenticated.HomeRouter()
    
