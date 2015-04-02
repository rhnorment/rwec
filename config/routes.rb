Rails.application.routes.draw do

  root      'pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get       '/about'          =>    'pages#about'
  get       '/about/faq'      =>    'pages#faq'
  get       '/contact'        =>    'pages#contact'
  get       '/leadership'     =>    'pages#leadership'
  get       '/purpose'        =>    'pages#purpose'
  get       '/accreditation'  =>    'pages#accreditation'
  get       '/locations'      =>    'pages#locations'
  get       '/investors'      =>    'pages#investors'

  get       '/404'            =>    'errors#not_found'
  get       '/422'            =>    'errors#unprocessable'
  get       '/500'            =>    'errors#server_error'


end
