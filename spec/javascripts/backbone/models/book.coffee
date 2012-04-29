describe "Misadventure.Book", ->
  Given -> @subject = new Misadventure.Book

  describe "#deleteTarget", ->
    When -> @subject.addBook("Interview with a Nompire")
    Then -> expect(@subject.length).toBe(1)
    Then -> expect(@subject.last().get('name')).toBe("Interview with a Nompire")

