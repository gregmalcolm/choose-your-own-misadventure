App = window.Misadventure || {}
class App.Views.Layouts.Unauthenticated extends App.Views.Layouts.Container
  onShow: (view) ->
    super
    @navbarItemsRegion.show(new App.Views.Unauthenticated.NavbarItems)
    App.routers.navbarItemsRouter = new App.Routers.Unauthenticated.NavbarItemsRouter()

    @mainRegion.show(new App.Views.Unauthenticated.Main)
    App.routers.homeRouter = new App.Routers.Unauthenticated.HomeRouter()
    
