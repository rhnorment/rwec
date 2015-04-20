Rails.application.routes.draw do

  root      'pages#home'

  get       '/about/mission_vision',        to:     'pages#mission_vision'
  get       '/about/objectives',            to:     'pages#objectives'
  get       '/about/leadership',            to:     'pages#leadership'
  get       '/about/investors',             to:     'pages#investors'

  get       '/solutions/high_school',       to:     'pages#high_school'
  get       '/solutions/college_aa',        to:     'pages#college_aa'
  get       '/solutions/college_ba',        to:     'pages#college_ba'

  get       '/products/curriculum',         to:     'pages#opportunities'

  get       '/opportunities/how_it_works',  to:     'pages#how_it_works'
  get       '/opportunities/customers',     to:     'pages#customers'
  get       '/opportunities/partners',      to:     'pages#partners'

  get       '/contact',                     to:     'pages#contact'

  get       '/404',                         to:     'errors#not_found'
  get       '/422',                         to:     'errors#unprocessable'
  get       '/500',                         to:     'errors#server_error'

end
