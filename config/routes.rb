Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :searches, only: [:new, :create]
  root 'searches#new'
end
