describe "Misadventure.Views.BooksView", ->
  Given -> @subject = new Misadventure.Views.BooksView
    el: $('#books')[0]
    model: new Misadventure.Models.BookList

  Then -> 
    expect(@subject.template).toBe(JST["backbone/templates/books"])
