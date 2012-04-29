describe "Misadventure.BooksView", ->
  Given -> @subject = new Misadventure.BooksView
    el: $('.books')[0]
    model: new Misadventure.BookList

  Then -> 
    expect(@subject.template).toBe(JST["backbone/templates/books"])
