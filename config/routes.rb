Rails.application.routes.draw do
  get 'users/new'
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'static_pages#top'
end
