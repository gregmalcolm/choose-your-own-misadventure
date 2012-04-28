class Misadventure.BookList extends Backbone.Collection
  model: Misadventure.Book 
  url: -> "/"

  addBook: (nameText)->
      nameText = _.trim(nameText)
      if nameText != ''
        attributes = { name: nameText }
        @create(attributes)
