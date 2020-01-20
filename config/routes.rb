Rails.application.routes.draw do
  resources :top_lists
  resources :comments
  resources :users
  # resources :artists

  get '/api/artists', to: 'artists#index'
  get '/api/artists/:id', to: 'artists#show'

  get 'api/users', to: 'users#index'
  get 'api/users/:id', to: 'users#show'
  
end
