Template.header.created = ->
  Session.set 'isActive', false
  Session.set 'showLogin', false
  return

Template['header'].helpers
  showLogin: ->
    Session.get 'showLogin'
  isActive: ->
    if Session.get('isActive') then 'active' else ''
  animateClass: ->
    if Session.get('isActive') then 'fadeIn' else 'fadeOut'
  iconClass: ->
    if Meteor.user() then 'user' else 'sign in'

Template['header'].events
  'click .resize.button': ->
    showLogin = Session.get('showLogin')
    Session.set 'isActive', !Session.get('isActive')
    setTimeout (->
      Session.set 'showLogin', !Session.get('showLogin')
      return
    ), 600
    return
  'click .log-out.button': ->
    Meteor.logout()
    return
