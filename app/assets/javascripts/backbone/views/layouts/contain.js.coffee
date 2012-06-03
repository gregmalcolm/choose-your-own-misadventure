App = window.Misadventure || {}
class App.Views.Layouts.Contain extends Backbone.Marionette.Layout
  template: JST["backbone/templates/layouts/contain"]

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


