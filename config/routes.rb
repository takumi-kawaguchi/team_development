Rails.application.routes.draw do

  devise_for :users
  get 'pages/index'
  get 'pages/show'

  resources :books, only: [:new, :create]

  
  root to: 'home#index'
  
end