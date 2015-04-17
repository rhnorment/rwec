Rails.application.routes.draw do

  root      'pages#home'

  get       '/about/objectives',            to:     'pages#objectives'
  get       '/about/leadership',            to:     'pages#leadership'
  get       '/about/investors',             to:     'pages#investors'

  get       '/program',                     to:     'pages#program'
  get       '/program/curriculum',          to:     'pages#curriculum'
  get       '/program/locations',           to:     'pages#locations'

  get       '/opportunities',               to:     'pages#opportunities'
  get       '/opportunities/how_it_works',  to:     'pages#how_it_works'
  get       '/opportunities/application',   to:     'pages#application'

  get       '/contact',                     to:     'pages#contact'

  get       '/404',                         to:     'errors#not_found'
  get       '/422',                         to:     'errors#unprocessable'
  get       '/500',                         to:     'errors#server_error'

end
