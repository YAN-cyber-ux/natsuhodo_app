Rails.application.routes.draw do
  root 'static_pages#home'
  get "/privacy_policy", to: "static_pages#privacy_policy"
  get "/terms_of_use", to: "static_pages#terms_of_use"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  get '/microposts', to: 'static_pages#home'
end
