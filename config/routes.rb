Rails.application.routes.draw do
  resources :top_lists
  resources :comments
  resources :artists
  resources :users
end
