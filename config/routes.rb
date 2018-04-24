Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'

  resources :books, only: [:index, :new, :create]
  
  root to: 'home#index'
  
end
