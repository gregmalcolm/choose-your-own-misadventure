describe "Misadventure.Views.Books", ->
  Given -> @subject = new Misadventure.Views.Books
    el: $('#main')[0]
    model: new Misadventure.Models.BookList

  Then -> 
    expect(@subject.template).toBe(JST["backbone/templates/books"])
