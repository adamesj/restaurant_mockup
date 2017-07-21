Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
=======
  resources :reservations
>>>>>>> 98656bfb9c6c28e9b633911451f05b330a5ba696
  root 'restaurants#index'
  resources :restaurants
end
