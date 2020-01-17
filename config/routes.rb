Rails.application.routes.draw do
  resources :top_lists
  resources :comments
  resources :artists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
