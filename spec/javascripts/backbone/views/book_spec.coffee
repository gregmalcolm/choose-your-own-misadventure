describe "Misadventure.Views.Books.Books", ->
  Given -> @subject = new Misadventure.Views.Books.Books
    el: $('#main')[0]
    model: new Misadventure.Models.Books.BookList

  Then -> 
    expect(@subject.template).toBe(JST["backbone/templates/books/books"])
