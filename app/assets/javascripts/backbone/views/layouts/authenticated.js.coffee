App = window.Misadventure || {}
class App.Views.Layouts.Authenticated extends App.Views.Layouts.Container
  onShow: (view) ->
    super
    @mainRegion.show(new App.Views.Main)
    App.routers.homeRouter = new App.Routers.HomeRouter()
