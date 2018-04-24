Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'

  resources :books, only: [:index, :new, :create, :show]
  
  get 'home/welcome'

  get 'users/my',      to: "users#show", as: :user
  get 'users/my/edit', to: "users#edit", as: :edit_user
  put 'users/my',      to: "users#update", as: :update_user
  resources :reviews
  root to: 'home#index'
  
end
