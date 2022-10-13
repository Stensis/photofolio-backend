Rails.application.routes.draw do
  resources :gallery_reviews
  resources :reviews
  resources :galleries
  resources :bookings 
  resources :admins 
  resources :sessions
  resources :users
  

# sessions is setups for the sessionsController
  get "/me", to: "users#show"
  post "/user_login", to: "sessions#create"
  delete "/user_logout", to: "sessions#destroy"
  post '/user_signup', to: 'users#create'


  get "/me", to: "admins#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post '/signup', to: 'admins#create'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
