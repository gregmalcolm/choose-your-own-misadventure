describe "Misadventure.BooksView", ->
  Given -> @subject = new Misadventure.BooksView

  Then -> expect(@subject.template).toBe(JST("backbone/templates/books")
