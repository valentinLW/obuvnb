Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shoes, only: %i[new create index show edit update]
  get "about", to: 'pages#about'
  get "profile", to: 'pages#profile'
end
