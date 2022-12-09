Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #get '/home/first'
  get 'home/index'
  get 'home/page'
  root 'home#index'
end
