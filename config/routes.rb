Rails.application.routes.draw do


  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'products#index'

  resources :products

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

end
