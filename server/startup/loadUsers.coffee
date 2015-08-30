loadUser = (user) ->
  userAlreadyExists = typeof Meteor.users.findOne(username: user.username) == 'object'
  if !userAlreadyExists
    Accounts.createUser user
  return

Meteor.startup ->
  users = YAML.eval(Assets.getText('users.yml'))
  for key of users
    if users.hasOwnProperty(key)
      loadUser users[key]
  return
