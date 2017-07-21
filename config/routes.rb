Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :reservations
  root 'restaurants#index'
  resources :restaurants
end
