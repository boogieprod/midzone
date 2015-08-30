# Define App Constants

if Meteor.App
  throw new Meteor.Error 'Meteor.App already defined? see client/lib/constants.coffee'

Meteor.App =
  NAME: 'Midzone Inc'
  DESCRIPTION: 'Midzone enterprises website'
