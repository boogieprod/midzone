loadFixture = (fixtures, collection) ->
  i = undefined
  i = 0
  while i < fixtures.length
    #collection.remove({ });
    collection.insert fixtures[i]
    i += 1
  return

Meteor.startup ->
  #loadFixture(Fixtures['dummyFixture'], DummyCollection);
  return
