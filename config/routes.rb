Rails.application.routes.draw do

  root      'pages#home'

  get       '/about',                 to:     'pages#about'
  get       '/contact',               to:     'pages#contact'
  get       '/about/leadership',      to:     'pages#leadership'
  get       '/about/purpose',         to:     'pages#purpose'
  get       '/about/accreditation',   to:     'pages#accreditation'
  get       '/locations',             to:     'pages#locations'
  get       '/investors',             to:     'pages#investors'
  get       '/contact',               to:     'pages#contact'

  get       '/404',                   to:     'errors#not_found'
  get       '/422',                   to:     'errors#unprocessable'
  get       '/500',                   to:     'errors#server_error'

end
