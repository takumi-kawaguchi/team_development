Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'


  
  root to: 'home#index'
end
