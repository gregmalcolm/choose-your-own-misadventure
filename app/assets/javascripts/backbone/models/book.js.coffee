class Misadventure.Models.Book extends Backbone.Model
  url: -> "/#{@escape('book')}"
  
