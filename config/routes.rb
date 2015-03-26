Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root      'pages#home'

  get       'about'           =>    'pages#about'
  get       'leadership'      =>    'pages#leadership'
  get       'purpose'         =>    'pages#purpose'
  get       'accreditation'   =>    'pages#accreditation'
  get       'locations'       =>    'pages#locations'
  get       'for_investors'   =>    'pages#investors'

  get       '/404'            =>    'errors#not_found'
  get       '/422'            =>    'errors#unprocessable'
  get       '/500'            =>    'errors#server_error'

end
