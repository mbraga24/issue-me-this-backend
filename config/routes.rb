Rails.application.routes.draw do
  # ====> sessions routes
  get '/home', to: 'sessions#home'
  post '/login', to: 'sessions#login'
  get '/autologin', to: 'sessions#autologin'

  # ====> issues routes
  resources :issues, only: [:index, :create, :update, :show, :destroy]
  # get '/issues', to: 'issues#index'
  # post '/issues', to: 'issues#create'
  # get /issues/:id, to: 'issues#show'
  # delete /issues/:id to: 'issues#destroy'
 
  # ====> users routes
  resources :users, only: [:index, :show, :create]
  # get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#show'

  # ====> comments routes
  resources :comments, only: [:index, :create, :destroy]
  # get '/comments', to: 'comments#index'
  # post '/comments', to: 'comments#create'
  # delete '/comments/:id', to: 'comments#destroy'

  # ====> skills routes
  resources :skills, only: [:index]
  # get '/skills', to: 'skills#index'
end
