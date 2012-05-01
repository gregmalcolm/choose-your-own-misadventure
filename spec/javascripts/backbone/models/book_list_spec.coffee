data = [
  { "id": 1, "name": "Where Llamas Dare",                               "created_at": "March 4, 2012",  "updated_at": "March 4, 2012" }
  { "id": 2, "name": "LOL Zombie Gorillas",                             "created_at": "March 18, 2012", "updated_at": "March 18, 2012" }
  { "id": 3, "name": "Help there is a temple about to fall on my head", "created_at": "March 20, 2012", "updated_at": "March 20, 2012" }
  { "id": 4, "name": "Moo!",                                            "created_at": "March 21, 2012", "updated_at": "March 21, 2012" }
]

describe "Misadventure.BookList", ->
  Given -> @subject = new Misadventure.BookList

  describe "#addBook", ->
    When -> @subject.addBook("Interview with a Nompire")
    Then(-> expect(@subject.collection.length).toBe(1) )
    .Then(-> expect(@subject.collection.last().get('name')).toBe("Interview with a Nompire") )

  context "with data:", ->
    Given -> @subject.collection.add(data)
    Then -> expect(@subject.collection.length).toBe(4)

    describe "#changeDeleteTarget", ->
      context "with no prior target", ->
        Then -> expect(@subject.currentDeleteTarget()?).toBeFalsy()

        context "sets a new change target", ->
          When -> @subject.changeDeleteTarget('book-2')
          Then(-> expect(@subject.currentDeleteTarget()).toBe('book-2') )
          .Then(-> expect(@subject.prevDeleteTarget()?).toBeFalsy() )

      context "with a target already present", ->
        Given -> @subject.changeDeleteTarget('book-1')
        Then(-> expect(@subject.currentDeleteTarget()).toBe('book-1') )
        .Then(-> expect(@subject.prevDeleteTarget()?).toBeFalsy() )

        context "new target", ->
          When -> @subject.changeDeleteTarget('book-3')
          Then(-> expect(@subject.currentDeleteTarget()).toBe('book-3'))
          .Then(-> expect(@subject.prevDeleteTarget()).toBe('book-1'))

        context "target is same as old target", ->
          When -> @subject.changeDeleteTarget('book-1')
          Then(-> expect(@subject.currentDeleteTarget()).toBe('book-1') )
          .Then(-> expect(@subject.prevDeleteTarget()?).toBeFalsy() )
    
    describe "#lostDeleteTarget", ->
      context "with no prior target", ->
        When -> @subject.lostDeleteTarget('book-3')
      
      context "with a target already present", ->
        Given -> @subject.changeDeleteTarget('book-1')
        Then -> expect(@subject.currentDeleteTarget()).toBe('book-1')

        context "and we lose the current target", ->
          When -> @subject.lostDeleteTarget('book-1')
          Then(-> expect(@subject.currentDeleteTarget()?).toBeFalsy() )
          .Then(-> expect(@subject.prevDeleteTarget()).toBe('book-1') )

        context "and we lose a diffrent target", ->
          When -> @subject.lostDeleteTarget('book-2')
          Then(-> expect(@subject.currentDeleteTarget()).toBe('book-1') )
          .Then(-> expect(@subject.prevDeleteTarget()?).toBeFalsy() )
    
    describe "#deleteBook", ->
      context "destroy book #2", ->
        When -> @subject.deleteBook('book-2')
        Then(-> expect(@subject.collection.at(1).get('name'))
          .toBe("Help there is a temple about to fall on my head") )
        .Then(-> expect(@subject.collection.length).toBe(3) )

    describe "model sorting", ->
      Then(-> 
        expect(@subject.collection.at(0).id).toBe(4) )
