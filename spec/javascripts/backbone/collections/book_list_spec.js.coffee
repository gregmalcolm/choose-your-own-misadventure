describe "Misadventure.BookList", ->
  Given -> @subject = new Misadventure.BookList

  describe "#addBook", ->
    When -> @subject.addBook("Interview with a Nompire")
    Then -> expect(@subject.length).toBe(1)
