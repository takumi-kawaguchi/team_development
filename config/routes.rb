Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/show'

  get 'reviews/index'

  get 'reviews/destroy'

  get 'reviews/edit'

  get 'reviews/update'

  devise_for :users
  get 'pages/index'
  get 'pages/show'

  resources :books, only: [:index, :new, :create, :show]
  
  get 'home/welcome'

  resources :users
  resources :reviews
  root to: 'home#index'
  
end
