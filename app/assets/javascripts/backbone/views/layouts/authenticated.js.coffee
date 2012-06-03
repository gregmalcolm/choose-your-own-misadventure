App = window.Misadventure || {}
class App.Views.Layouts.Authenticated extends App.Views.Layouts.Contain
  onShow: (view) ->
    super
    @navbarItemsRegion.show(new App.Views.NavbarItems)
    App.routers.navbarItemsRouter = new App.Routers.NavbarItemsRouter()
    
    @mainRegion.show(new App.Views.Main)
    App.routers.homeRouter = new App.Routers.HomeRouter()
