Rails.application.routes.draw do
  devise_for :users
  resources :reservations
  root 'restaurants#index'
  resources :restaurants
end
