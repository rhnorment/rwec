Rails.application.routes.draw do

  root      'pages#home'

  get       '/about',                 to:     'pages#about'
  get       '/about/leadership',      to:     'pages#leadership'
  get       '/about/objectives',      to:     'pages#objectives'
  get       '/about/investors',       to:     'pages#investors'

  get       '/program',               to:     'pages#program'
  get       '/program/curriculum',    to:     'pages#curriculum'
  get       '/program/locations',     to:     'pages#locations'

  get       '/expansion',             to:     'pages#expansion'

  get       '/contact',               to:     'pages#contact'

  get       '/404',                   to:     'errors#not_found'
  get       '/422',                   to:     'errors#unprocessable'
  get       '/500',                   to:     'errors#server_error'

end
