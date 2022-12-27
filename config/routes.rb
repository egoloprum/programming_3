Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/input'
  get 'home/view'
  root 'home#input'
  # Defines the root path route ("/")
  # root "articles#index"
end
