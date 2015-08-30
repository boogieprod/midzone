Template.home.helpers
  'feature': ->
    [
      {
        'text': ->
          TAPi18n.__ 'our_services'
        'icon': 'archive'
        'path': '#services'
      }
      {
        'text': ->
          TAPi18n.__ 'our_clients'
        'icon': 'users'
        'path': '#clients'
      }
      {
        'text': ->
          TAPi18n.__ 'proposal'
        'icon': 'edit'
        'color': 'hover-orange'
        'path': '#proposal'
      }
      {
        'text': ->
          TAPi18n.__ 'about_us'
        'icon': 'find'
        'path': '#about'
      }
    ]
  'services': ->
    [
      {
        'name': ->
          TAPi18n.__ 'pos_integ'
      }
      {
        'name': ->
          TAPi18n.__ 'proj_manag'
      }
      {
        'name': ->
          TAPi18n.__ 'bank_certif'
      }
      {
        'name': ->
          TAPi18n.__ 'net_architecture'
      }
      {
        'name': ->
          TAPi18n.__ 'tech_training'
      }
      {
        'name': ->
          TAPi18n.__ 'func_training'
      }
      {
        'name': 'Installation'
      }
    ]
  'clients': ->
    [
      {
        'name': 'Le Château'
        'description': ->
          TAPi18n.__ 'chateau_description'
      }
      {
        'name': 'Stokes'
        'description': ->
          TAPi18n.__ 'stokes_description'
      }
      {
        'name': 'Exemple'
        'description': ->
          TAPi18n.__ 'ex_description'
      }
      {
        'name': 'Exemple'
        'description': ->
          TAPi18n.__ 'ex_description'
      }
      {
        'name': 'Exemple'
        'description': ->
          TAPi18n.__ 'ex_description'
      }
      {
        'name': 'Exemple'
        'description': ->
          TAPi18n.__ 'ex_description'
      }
      {
        'name': 'Exemple'
        'description': ->
          TAPi18n.__ 'ex_description'
      }
    ]
  'semanticElement': ->
    [
      {
        'what': ->
          TAPi18n.__ 'large_buttons'
        'withBootstrap': 'btn btn-lg'
        'withSemanticUI': 'ui large button'
      }
      {
        'what': ->
          TAPi18n.__ 'one_column'
        'withBootstrap': 'col-md-1'
        'withSemanticUI': 'one wide column'
      }
      {
        'what': ->
          TAPi18n.__ 'vertical_menu'
        'withBootstrap': 'nav nav-pills'
        'withSemanticUI': 'ui vertical menu'
      }
    ]
  'owner': ->
    [
      {
        'name': 'Example'
        'img': 'person.gif'
        'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a ex gravida, malesuada neque id, ullamcorper dui. Mauris nec ultrices felis, nec rutrum libero. Cras vel lacinia ex. Integer vulputate rutrum magna, vel egestas nunc tincidunt in. Phasellus metus orci, sodales eu nisi posuere, vehicula feugiat dolor. Aenean id euismod.'
      }
      {
        'name': 'Example'
        'img': 'person.gif'
        'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a ex gravida, malesuada neque id, ullamcorper dui. Mauris nec ultrices felis, nec rutrum libero. Cras vel lacinia ex. Integer vulputate rutrum magna, vel egestas nunc tincidunt in. Phasellus metus orci, sodales eu nisi posuere, vehicula feugiat dolor. Aenean id euismod.'
      }
    ]

Template.home.events {}

Template.home.rendered = ->

  # @see: http://stackoverflow.com/questions/5284814/jquery-scroll-to-div
  $('a[href*=#]:not([href=#])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html, body').animate { scrollTop: target.offset().top }, 1000
        return false
    true
  return
