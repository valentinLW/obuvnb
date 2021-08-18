Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: 'pages#about'
  get "profile", to: 'pages#profile'
  resources :shoes, only: %i[new create index show edit update] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[show]
end
