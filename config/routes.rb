Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'

  resources :books, only: [:index, :new, :create, :show]
  
  get 'home/welcome'

  resources :users
  root to: 'home#index'
  
end
