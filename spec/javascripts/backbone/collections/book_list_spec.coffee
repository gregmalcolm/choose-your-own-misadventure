data = [
  { "id": 1, "name": "Where Llamas Dare" }
  { "id": 2, "name": "LOL Zombie Gorillas" }
  { "id": 3, "name": "Help there is a temple about to fall on my head" }
]

describe "Misadventure.BookList", ->
  Given -> @subject = new Misadventure.BookList

  describe "#addBook", ->
    When -> @subject.addBook("Interview with a Nompire")
    Then -> expect(@subject.length).toBe(1)
    Then -> expect(@subject.last().get('name')).toBe("Interview with a Nompire")

  context "with data:", ->
    Given -> @subject.add(data)

    Then -> expect(@subject.length).toBe(3)

    describe "#getDeleteTarget", ->
      context "with no target", ->
        When -> @target = @subject.getDeleteTarget()
        Then -> expect(@target?).toBeFalsy()

    describe "#changeDeleteTarget", ->
      context "with no prior target", ->
        Then -> expect(@subject.getDeleteTarget()?).toBeFalsy()

#        context "Sets a new change target", ->
#          When -> @subject.changeDeleteTarget('book-2')
#          Then -> expect(@subject.getDeleteTarget()).toBe('book-2')
