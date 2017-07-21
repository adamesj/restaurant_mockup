Rails.application.routes.draw do
  resources :reservations
  root 'restaurants#index'
  resources :restaurants
end
