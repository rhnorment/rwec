Rails.application.routes.draw do

  root      'pages#home'

  get       '/about',           to:     'pages#about_us'

  get       '/products',        to:     'pages#products'

  get       '/services',        to:     'pages#services'

  get       '/opportunities',   to:     'pages#opportunities'

  get       '/contact',         to:     'pages#contact'

  get       '/404',             to:     'errors#not_found'
  get       '/422',             to:     'errors#unprocessable'
  get       '/500',             to:     'errors#server_error'

end
