App = window.Misadventure || {}
class App.Views.Layouts.Container extends Backbone.Marionette.Layout
  template: JST["backbone/templates/layouts/container"]

  regions:
    navigationRegion:  "#navigation"
    navbarItemsRegion: "#navigation-items"
    mainRegion:        "#main"
    contentRegion:     "#content"

  onShow: ->
    @navigationRegion.show(new App.Views.Navigation())
    App.routers.navigationRouter = new App.Routers.NavigationRouter()
  
  render: ->
    @initializeRegions()
    $(@el).html(@template())
    @


