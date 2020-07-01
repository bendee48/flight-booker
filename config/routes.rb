Rails.application.routes.draw do
  resources :passengers, only: [:new, :create]
  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create]
  root 'flights#index'
end
