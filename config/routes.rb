Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get       '/404'            =>    'errors#not_found'
  get       '/422'            =>    'errors#unprocessable'
  get       '/500'            =>    'errors#server_error'


end
