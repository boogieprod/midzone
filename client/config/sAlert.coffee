# sAlert package configs See https://github.com/juliancwirko/meteor-s-alert for Package add configs

Meteor.startup ->
  sAlert.config
    effect: "stackslide"
    position: "bottom-right"
    timeout: 3000
    html: false
