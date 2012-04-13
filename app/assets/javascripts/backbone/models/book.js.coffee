class Misadventure.Book extends Backbone.Model
  url: -> "/#{@escape('book')}"
  #initialize: (attributes, options) ->
    #    @model.set('name:': attributes.name)
