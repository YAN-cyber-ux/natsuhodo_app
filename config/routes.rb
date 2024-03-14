Rails.application.routes.draw do
  get 'staticpages/top'
  get "static_pages/help"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'staticpages#top'
end
