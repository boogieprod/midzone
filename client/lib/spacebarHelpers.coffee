Template.registerHelper 'debug', (optionalValue) ->
  if typeof console != 'undefined' or typeof console.log != 'undefined'
    console.log 'Current Context'
    console.log '===================='
    console.log this
    if optionalValue
      console.log 'Value'
      console.log '===================='
      console.log optionalValue
    return ''
  # For IE8
  alert this
  if optionalValue
    alert optionalValue
  ''
Template.registerHelper 'constant', (what) ->
  Meteor.App[what.toUpperCase()]
