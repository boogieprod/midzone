# Routes
Router.route '/',
  name: 'home'
  action: ->
    @render 'home'
    SEO.set title: 'Home - ' + Meteor.App.NAME
    return
